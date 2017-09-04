﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class AppFacadeWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(AppFacade), typeof(Facade));
		L.RegFunction("StartUp", StartUp);
		L.RegFunction("New", _CreateAppFacade);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Instance", get_Instance, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateAppFacade(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				AppFacade obj = new AppFacade();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: AppFacade.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int StartUp(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			AppFacade obj = (AppFacade)ToLua.CheckObject<AppFacade>(L, 1);
			obj.StartUp();
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Instance(IntPtr L)
	{
		try
		{
			ToLua.PushObject(L, AppFacade.Instance);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}
