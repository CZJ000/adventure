﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class LuaFramework_ManagerNameWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(LuaFramework.ManagerName), typeof(System.Object));
		L.RegFunction("New", _CreateLuaFramework_ManagerName);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Lua", get_Lua, null);
		L.RegVar("Game", get_Game, null);
		L.RegVar("Timer", get_Timer, null);
		L.RegVar("Sound", get_Sound, null);
		L.RegVar("Panel", get_Panel, null);
		L.RegVar("Network", get_Network, null);
		L.RegVar("Resource", get_Resource, null);
		L.RegVar("Thread", get_Thread, null);
		L.RegVar("ObjectPool", get_ObjectPool, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateLuaFramework_ManagerName(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				LuaFramework.ManagerName obj = new LuaFramework.ManagerName();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: LuaFramework.ManagerName.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Lua(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Lua);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Game(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Game);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Timer(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Timer);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Sound(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Sound);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Panel(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Panel);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Network(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Network);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Resource(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Resource);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Thread(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.Thread);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ObjectPool(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.ManagerName.ObjectPool);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

