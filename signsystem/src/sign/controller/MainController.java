package sign.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sign.model.Sign;
import sign.service.ISignService;

@Controller
public class MainController {
	private ISignService signService;

	public ISignService getSignService() {
		return signService;
	}
	@Resource
	public void setSignService(ISignService signService) {
		this.signService = signService;
	}
	
	
	@RequestMapping(value="/getbyphone")
	public String display(Model model,String phone)
	{
		if(phone.isEmpty())
		{
			model.addAttribute("notice","请输入手机号!");
			return "/index.jsp";
		}
		if(signService.getByPhone(phone)==null)
		{
			model.addAttribute("notice","该手机号未注册!");
			return "/index.jsp";
		}
		//将数据传入视图层
		model.addAttribute("person",signService.getByPhone(phone));
		return "/WEB-INF/jsp/information.jsp";
	}
	@RequestMapping(value="/index")
	public String index(Model model)
	{
		
		//将数据传入视图层

		return "/index.jsp";
	}
	@RequestMapping(value="/register")
	public String register(Model model)
	{
		
		//将数据传入视图层

		return "/WEB-INF/jsp/register.jsp";
	}
	@RequestMapping(value="/registersubmit")
	public String registersubmit(Model model,String identity,String name,String company,String phone,String email,String title)
	{
		if(name.isEmpty())
		{
			model.addAttribute("notice","姓名不能为空!");
			return "/WEB-INF/jsp/register.jsp";
		}
		if(phone.isEmpty())
		{
			model.addAttribute("notice","手机不能为空!");
			return "/WEB-INF/jsp/register.jsp";
		}
		
		Sign sign=new Sign(name,company,phone,email,title,identity,0);
		if(!signService.save(sign))
		{
			model.addAttribute("notice","该手机已注册!");
			return "/WEB-INF/jsp/register.jsp";
		}
	
		model.addAttribute("person",signService.getByPhone(phone));
		return "/WEB-INF/jsp/information.jsp";
	}
}
