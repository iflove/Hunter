.class Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfIntf;
.super Ljava/lang/Object;
.source "UniPerfIntf.java"


# static fields
.field public static final UNIPERF_CLIENT_DEFAULT:I = 0x0

.field public static final UNIPERF_CLIENT_EAPA:I = 0x3

.field public static final UNIPERF_CLIENT_POWERGENIE:I = 0x1

.field public static final UNIPERF_CLIENT_TEMPERATURE_CONTROL:I = 0x2

.field public static final UNIPERF_CTRL_TYPE_BENCHMARK:I = 0x6

.field public static final UNIPERF_CTRL_TYPE_GAME:I = 0x5

.field public static final UNIPERF_CTRL_TYPE_HIGHPERF:I = 0x0

.field public static final UNIPERF_CTRL_TYPE_LOW_TEMP_LOW_VOLTAGE:I = 0x4

.field public static final UNIPERF_CTRL_TYPE_LOW_VOLTAGE:I = 0x3

.field public static final UNIPERF_CTRL_TYPE_ON_FIRE:I = 0x8

.field public static final UNIPERF_CTRL_TYPE_SPECIAL_GAME:I = 0x7

.field public static final UNIPERF_CTRL_TYPE_SUSTAINED_MODE:I = 0x1

.field public static final UNIPERF_CTRL_TYPE_THERMAL_PROTECT:I = 0x2

.field public static final UNIPERF_EVENT_APP_START:I = 0x1003

.field public static final UNIPERF_EVENT_BENCHMARK:I = 0x1016

.field public static final UNIPERF_EVENT_CLEAN_LIST:I = 0x4f00

.field public static final UNIPERF_EVENT_FINGERPRINT:I = 0x1007

.field public static final UNIPERF_EVENT_GAME_SCENE:I = 0x1018

.field public static final UNIPERF_EVENT_IAWARE_EAS_DEFAULT:I = 0x1011

.field public static final UNIPERF_EVENT_IAWARE_EAS_SCREENOFF:I = 0x1012

.field public static final UNIPERF_EVENT_LISTFLING:I = 0x1010

.field public static final UNIPERF_EVENT_LUCKYMONEY:I = 0x100a

.field public static final UNIPERF_EVENT_OFF:I = -0x1

.field public static final UNIPERF_EVENT_ON:I = 0x0

.field public static final UNIPERF_EVENT_ON_FIRE:I = 0x1019

.field public static final UNIPERF_EVENT_ON_OFF_BEGIN:I = 0x3000

.field public static final UNIPERF_EVENT_ON_OFF_END:I = 0x3500

.field public static final UNIPERF_EVENT_PROBE:I = 0x1014

.field public static final UNIPERF_EVENT_RESET_BOOST_EAS:I = 0x1005

.field public static final UNIPERF_EVENT_ROTATION:I = 0x1009

.field public static final UNIPERF_EVENT_SCREEN_ON:I = 0x1006

.field public static final UNIPERF_EVENT_SCROLLER:I = 0x1001

.field public static final UNIPERF_EVENT_SET_BOOST_EAS:I = 0x1004

.field public static final UNIPERF_EVENT_SET_LEVEL_DEFAULT:I = 0x1500

.field public static final UNIPERF_EVENT_SPECIAL_GAME_SCENE:I = 0x1017

.field public static final UNIPERF_EVENT_STATUS_BAR:I = 0x1008

.field public static final UNIPERF_EVENT_SUB_SWITCH:I = 0x4f01

.field public static final UNIPERF_EVENT_TOUCH_MOVE:I = 0x1000

.field public static final UNIPERF_EVENT_VIP_LEVEL_0:I = 0x100b

.field public static final UNIPERF_EVENT_VIP_LEVEL_1:I = 0x100c

.field public static final UNIPERF_EVENT_VIP_LEVEL_2:I = 0x100d

.field public static final UNIPERF_EVENT_VIP_LEVEL_3:I = 0x100e

.field public static final UNIPERF_EVENT_VIP_LEVEL_4:I = 0x100f

.field public static final UNIPERF_EVENT_WINDOW_SWITCH:I = 0x1002

.field public static final UNIPERF_MAX_SPECIAL_SCENE:I = 0x1100

.field public static final UNIPERF_TAG_AVL_B_CPU_FREQ_LIST:I = 0x23

.field public static final UNIPERF_TAG_AVL_DDR_FREQ_LIST:I = 0x25

.field public static final UNIPERF_TAG_AVL_GPU_FREQ_LIST:I = 0x24

.field public static final UNIPERF_TAG_AVL_L_CPU_FREQ_LIST:I = 0x22

.field public static final UNIPERF_TAG_B_CPU_CUR:I = 0x6

.field public static final UNIPERF_TAG_B_CPU_MAX:I = 0x5

.field public static final UNIPERF_TAG_B_CPU_MIN:I = 0x4

.field public static final UNIPERF_TAG_CPU_BOOST:I = 0x29

.field public static final UNIPERF_TAG_CTRL_STOP:I = 0x27

.field public static final UNIPERF_TAG_CTRL_TYPE:I = 0x0

.field public static final UNIPERF_TAG_CTRL_TYPE_NEW:I = 0x26

.field public static final UNIPERF_TAG_DDR_CUR:I = 0xc

.field public static final UNIPERF_TAG_DDR_MAX:I = 0xb

.field public static final UNIPERF_TAG_DDR_MIN:I = 0xa

.field public static final UNIPERF_TAG_DEF_B_CPU_MAX:I = 0x18

.field public static final UNIPERF_TAG_DEF_B_CPU_MIN:I = 0x17

.field public static final UNIPERF_TAG_DEF_DDR_MAX:I = 0x1c

.field public static final UNIPERF_TAG_DEF_DDR_MIN:I = 0x1b

.field public static final UNIPERF_TAG_DEF_GPU_MAX:I = 0x1a

.field public static final UNIPERF_TAG_DEF_GPU_MIN:I = 0x19

.field public static final UNIPERF_TAG_DEF_HMP_DN_THRES:I = 0x1e

.field public static final UNIPERF_TAG_DEF_HMP_UP_THRES:I = 0x1d

.field public static final UNIPERF_TAG_DEF_IPA_CONTROL_TEMP:I = 0x20

.field public static final UNIPERF_TAG_DEF_IPA_SUSTAINABLE_POWER:I = 0x21

.field public static final UNIPERF_TAG_DEF_IPA_SWITCH_TEMP:I = 0x1f

.field public static final UNIPERF_TAG_DEF_L_CPU_MAX:I = 0x16

.field public static final UNIPERF_TAG_DEF_L_CPU_MIN:I = 0x15

.field public static final UNIPERF_TAG_GPU_CUR:I = 0x9

.field public static final UNIPERF_TAG_GPU_MAX:I = 0x8

.field public static final UNIPERF_TAG_GPU_MIN:I = 0x7

.field public static final UNIPERF_TAG_HMP_DN_THRES:I = 0xe

.field public static final UNIPERF_TAG_HMP_POLICY_STATE:I = 0x10

.field public static final UNIPERF_TAG_HMP_PRIORITY:I = 0xf

.field public static final UNIPERF_TAG_HMP_UP_THRES:I = 0xd

.field public static final UNIPERF_TAG_IPA_CONTROL_TEMP:I = 0x12

.field public static final UNIPERF_TAG_IPA_SUSTAINABLE_POWER:I = 0x13

.field public static final UNIPERF_TAG_IPA_SWITCH_TEMP:I = 0x11

.field public static final UNIPERF_TAG_L_CPU_CUR:I = 0x3

.field public static final UNIPERF_TAG_L_CPU_MAX:I = 0x2

.field public static final UNIPERF_TAG_L_CPU_MIN:I = 0x1

.field public static final UNIPERF_TAG_MAX:I = 0x2b

.field public static final UNIPERF_TAG_SCHED_LEVEL_CHANGE_ONE:I = 0x28

.field public static final UNIPERF_TAG_SET_SCHED_LEVEL:I = 0x2a

.field public static final UNIPERF_TAG_SUB_SWITCH:I = 0x2710

.field public static final UNIPERF_TAG_TASK_FORK_ON_B_CLUSTER:I = 0x14


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
