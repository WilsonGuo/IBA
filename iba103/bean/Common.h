//
//  Common.h
//
//  Created by neng on 14-6-19.
//  Copyright (c) 2014年 neng. All rights reserved.
//

//只在debug下才输出日志, 在程序运行时取消log
#ifdef DEBUG
#define MyLog(...)  NSLog(__VA_ARGS__)
#else
#define MyLog(...)
#endif

#define MUSIC_TYPE_1  1
#define MUSIC_TYPE_2  2
#define MUSIC_TYPE_3  3
#define MUSIC_TYPE_4  4
#define MUSIC_TYPE_5  5
#define MUSIC_TYPE_6  6

#define MUSIC_GROUP_TYPE_1  10
#define MUSIC_GROUP_TYPE_2  11

//调用函数
#define LogFun  MyLog(@"%s",__func__);

//输出视图的frame边界
#define LogFrame(view)  MyLog(@"%@",NSStringFromCGRect(view.frame) );

//输出所有子视图
#define LogSubviews(view)  MyLog(@"%@",view.subviews);

#define iOS7Later   ([UIDevice currentDevice].systemVersion.floatValue>=7.0)

#define iOS7StatusBarHeight  15.0f;

#define ReqType

#define DBNAME			@"tea.sqlite"
#define DB_DEV_ID		@"id"
#define DB_DEV_NAME     @"name"
#define DB_DEV_TAG		@"tag"
#define DB_DEV_STATUS	@"status"



#define Notification_userinfo_mac @"Notification_userinfo_mac"

#define Notification_GetSuccess @"Notification_GetSuccess"

#define Notification_GetSuccess_userinfo_key @"Notification_GetSuccess_userinfo_key"

#define Notification_GetSuccess_userinfo_timer_delete @"Notification_GetSuccess_userinfo_timer_delete"

#define Notification_GetSuccess_userinfo_timer_add @"Notification_GetSuccess_userinfo_timer_add"

#define Notification_GetSuccess_pass @"Notification_GetSuccess_pass"

#define Notification_GetSuccess_userinfo_setpass @"Notification_GetSuccess_userinfo_setpass"

#define Notification_GetSuccess_userinfo_lock @"Notification_GetSuccess_userinfo_lock"

#define Notification_GetSuccess_userinfo_unlock @"Notification_GetSuccess_userinfo_unlock"

#define Notification_GetError @"Notification_GetError"

#define Notification_GetError_userinfo_key @"Notification_GetError_userinfo_key"

#define Notification_GetError_userinfo_timer_add @"Notification_GetError_userinfo_timer_add"

#define Notification_GetError_userinfo_timer_delete @"Notification_GetError_userinfo_timer_delete"

#define Notification_GetError_userinfo_system @"Notification_GetError_userinfo_system"

#define Notification_GetError_userinfo_id @"Notification_GetError_userinfo_id"

#define Notification_GetError_userinfo_pass @"Notification_GetError_userinfo_pass"

#define Notification_GetError_userinfo_setpass @"Notification_GetError_userinfo_setpass"

#define Notification_GetError_userinfo_unlock @"Notification_GetError_userinfo_unlock"

#define Notification_GetError_userinfo_lock @"Notification_GetError_userinfo_lock"

#define Notification_GetError_userinfo_tmt @"Notification_GetError_userinfo_tmt"

#define Notification_GetError_userinfo_timeout @"Notification_GetError_userinfo_timeout"

#define Notification_GetError_userinfo_offline @"Notification_GetError_userinfo_offline"

#define Notification_GetSmartConfig @"Notification_GetSmartConfig"

#define Notification_GetStatusChange @"Notification_GetStatusChange"

#define Notification_GetStatusChangeForNotify @"Notification_GetStatusChangeForNotify"

#define Notification_GetAddOrDelDevice @"Notification_GetAddOrDelDevice"


#define Notification_GetLightOn @"Notification_GetLightOn"//light on 通知标识符

#define Notification_GetLightOff @"Notification_GetLightOff"//light off 通知标识符

#define Notification_GetAirOper @"Notification_GetAirOper"//空调相关操作 通知标识符

#define Notification_GetLock @"Notification_GetLock"

#define Notification_SetPass @"Notification_SetPass"

#define Notification_GetCZTimer @"Notification_GetCZTimer"

#define Notification_SetCountDownTimer @"Notification_SetCountDownTimer"

#define Notification_SelectTabWithIndex @"Notification_SelectTabWithIndex"

//#define Notification_ReturnSmartConfig @"Notification_ReturnSmartConfig"

#define Notification_TipHoldHeat @"Notification_TipHoldHeat"

#define devNameArray  [[NSArray alloc] initWithObjects:@"computer",@"airconditioner",@"electriclight", @"fan", @"humidifier", @"outlet",@"router",@"tv" ,@"washer" , nil];


#define teaImageNameArray  [[NSArray alloc] initWithObjects:@"tea_dark",@"tea_green",@"tea_yellow", @"tea_red", @"tea_oolong", @"tea_white", nil];

#define teaNameCNArray  [[NSArray alloc] initWithObjects:@"黑茶",@"绿茶",@"黄茶", @"红茶", @"青茶", @"白茶", nil];

#define teaNameENArray  [[NSArray alloc] initWithObjects:@"DARK TEA",@"GREEN TEA",@"YELLOW TEA", @"BLACK TEA", @"OOLONG TEA", @"WHITE TEA",nil];
#define teaSliderTagArray  [NSArray arrayWithObjects:@"100℃",@"95℃",@"90℃",@"85℃",@"80℃", nil];
#define teaLiquorTagArray  [[NSArray alloc] initWithObjects:@"浓",@"",@"中",@"",@"淡",nil];

//绿茶：80度
//红茶：95度
//白茶：80度
//黄茶：85度
//青茶：100度
//黑茶：100度
#define teaTempDefaultArray  [[NSArray alloc] initWithObjects:@100,@80,@85,@95,@100,@80,nil];
//浓度==浓:2  中:1  淡:0
//绿茶：2
//红茶：2
//白茶：2
//黄茶：2
//青茶：2
//黑茶：2
#define teaLiquorDefaultArray  [[NSArray alloc] initWithObjects:@1,@1,@1,@1,@1,@1,nil];


typedef enum
{
	ReqTypeIdMaxForDev=9999,
	ReqTypeIdForDefault=10000,//默认
	ReqTypeIdLightOn=20000,//Light开
	ReqTypeIdLightOff=30000,//Light关
	ReqTypeIdAir=40000,//air
	ReqTypeIdDevSetVar=90000,//设置初始参数
	ReqTypeIdDevQueryStatus=100000,//设置初始参数
	ReqTypeIdDevQueryTimer=110000,//获取定时器列表
	ReqTypeIdTimerAddForLight=1000000,//定时增加 2000000--2990000  万位和十万位数表示timerId,可满足99个
	ReqTypeIdTimerAddMaxForLight=1990000,
	ReqTypeIdTimerAddForAir=2000000,
	ReqTypeIdTimerAddMaxForAir=2990000,
	ReqTypeIdTimerAddForAlarm=3000000,
	ReqTypeIdTimerAddMaxForAlarm=3990000,
	
	ReqTypeIdTimerDelForLight=5000000,//定时删除 9000000--9990000  万位和十万位数表示timerId,可满足99个
	ReqTypeIdTimerDelMaxForLight=5990000,
	ReqTypeIdTimerDelForAir=6000000,
	ReqTypeIdTimerDelMaxForAir=6990000, 
	ReqTypeIdTimerDelForAlarm=7000000,
	ReqTypeIdTimerDelMaxForAlarm=7990000
}ReqType;

typedef enum
{
	TimerTypeIdForLight=0,
	TimerTypeIdForAir=1,
	TimerTypeIdForAlarm=2
	
}TimerType;

#define str4Bool(k,v)   [NSString stringWithFormat:@" %@:%@ ",k,v?@"YES":@"NO"]


typedef enum
{
	TabToCtrl=0,
	TabToSetting=1,
}TabPage;
