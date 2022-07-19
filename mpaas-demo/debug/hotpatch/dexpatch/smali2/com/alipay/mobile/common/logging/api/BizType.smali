.class public final enum Lcom/alipay/mobile/common/logging/api/BizType;
.super Ljava/lang/Enum;
.source "BizType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/logging/api/BizType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum ALIVE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum ANR:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum AP_MULTIMEDIA:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum AUTOMATION:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum CDP:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum CONFIG_SERVICE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum CRASH:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum DEVICE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum HOT_PATCH:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum LAG:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum LAUNCH:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum LBS:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum MPAAS_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum MPAAS_CLIENT:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum MPAAS_EXCEPTION:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum MPAAS_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum NEBULA:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum OCR:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum PUSH:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum RPC:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum SAFE_KEYBOARD:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum SCAN:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum SHARE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum STORAGE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum SYNC:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum TINY_APP:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum TRAFFIC:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

.field public static final enum USER_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;


# instance fields
.field private desc:Ljava/lang/String;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 8
    new-instance v0, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v1, "MPAAS_CLIENT"

    const/4 v2, 0x0

    const-string/jumbo v3, "mPaaSClientAndroid"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_CLIENT:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 13
    new-instance v1, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v3, "AP_MULTIMEDIA"

    const-string/jumbo v5, "mPaaSARTVCAndroid"

    const/16 v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/BizType;->AP_MULTIMEDIA:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 18
    new-instance v3, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v5, "SAFE_KEYBOARD"

    const/4 v7, 0x2

    const-string/jumbo v8, "mPaaSSafeKeyboardAndroid"

    invoke-direct {v3, v5, v7, v8, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/common/logging/api/BizType;->SAFE_KEYBOARD:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 23
    new-instance v5, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v8, "OCR"

    const/4 v9, 0x3

    const-string/jumbo v10, "mPaaSOCRAndroid"

    invoke-direct {v5, v8, v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/common/logging/api/BizType;->OCR:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 28
    new-instance v8, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v10, "TRAFFIC"

    const/4 v11, 0x4

    const-string/jumbo v12, "mPaaSTrafficAndroid"

    invoke-direct {v8, v10, v11, v12, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/alipay/mobile/common/logging/api/BizType;->TRAFFIC:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 33
    new-instance v10, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v12, "DEVICE"

    const/4 v13, 0x5

    const-string/jumbo v14, "mPaaSDeviceAndroid"

    invoke-direct {v10, v12, v13, v14, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/alipay/mobile/common/logging/api/BizType;->DEVICE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 38
    new-instance v12, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "CDP"

    const/4 v15, 0x6

    const-string/jumbo v13, "mPaaSCDPAndroid"

    invoke-direct {v12, v14, v15, v13, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/alipay/mobile/common/logging/api/BizType;->CDP:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 43
    new-instance v13, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "LBS"

    const/4 v15, 0x7

    const-string/jumbo v11, "mPaaSLBSAndroid"

    invoke-direct {v13, v14, v15, v11, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/common/logging/api/BizType;->LBS:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 48
    new-instance v11, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "STORAGE"

    const/16 v15, 0x8

    const-string/jumbo v9, "mPaaSStorageAndroid"

    invoke-direct {v11, v14, v15, v9, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/common/logging/api/BizType;->STORAGE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 53
    new-instance v9, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "SHARE"

    const/16 v15, 0x9

    const-string/jumbo v7, "mPaaSShareAndroid"

    invoke-direct {v9, v14, v15, v7, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/common/logging/api/BizType;->SHARE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 58
    new-instance v7, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "CONFIG_SERVICE"

    const/16 v15, 0xa

    const-string/jumbo v2, "mPaaSConfigServiceAndroid"

    invoke-direct {v7, v14, v15, v2, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/common/logging/api/BizType;->CONFIG_SERVICE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 63
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "UPGRADE"

    const/16 v15, 0xb

    const-string/jumbo v4, "mPaaSUpgradeAndroid"

    invoke-direct {v2, v14, v15, v4, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 68
    new-instance v4, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "RPC"

    const/16 v15, 0xc

    move-object/from16 v16, v2

    const-string/jumbo v2, "mPaaSRPCAndroid"

    invoke-direct {v4, v14, v15, v2, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->RPC:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 73
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "NEBULA"

    const/16 v15, 0xd

    move-object/from16 v17, v4

    const-string/jumbo v4, "mPaaSNebulaAndroid"

    invoke-direct {v2, v14, v15, v4, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->NEBULA:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 78
    new-instance v4, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "TINY_APP"

    const/16 v15, 0xe

    move-object/from16 v18, v2

    const-string/jumbo v2, "mPaaSTinyAppAndroid"

    invoke-direct {v4, v14, v15, v2, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->TINY_APP:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 83
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "SCAN"

    const/16 v15, 0xf

    const-string/jumbo v6, "mPaaSScanAndroid"

    move-object/from16 v19, v4

    const/4 v4, 0x1

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->SCAN:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 88
    new-instance v4, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "SYNC"

    const/16 v14, 0x10

    const-string/jumbo v15, "mPaaSSyncAndroid"

    move-object/from16 v20, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->SYNC:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 93
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "PUSH"

    const/16 v15, 0x11

    const-string/jumbo v14, "mPaaSPushAndroid"

    move-object/from16 v21, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->PUSH:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 98
    new-instance v4, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "HOT_PATCH"

    const/16 v14, 0x12

    const-string/jumbo v15, "mPaaSHotPatchAndroid"

    move-object/from16 v22, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->HOT_PATCH:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 103
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "LAUNCH"

    const/16 v15, 0x13

    const-string/jumbo v14, "mPaaSLaunchAndroid"

    move-object/from16 v23, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v15, v14, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->LAUNCH:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 108
    new-instance v6, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "LAG"

    const/16 v15, 0x14

    move-object/from16 v24, v2

    const-string/jumbo v2, "mPaaSLAGAndroid"

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/common/logging/api/BizType;->LAG:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 113
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "ANR"

    const/16 v15, 0x15

    move-object/from16 v25, v6

    const-string/jumbo v6, "mPaaSANRAndroid"

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->ANR:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 118
    new-instance v6, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "CRASH"

    const/16 v15, 0x16

    move-object/from16 v26, v2

    const-string/jumbo v2, "mPaaSCrashAndroid"

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/common/logging/api/BizType;->CRASH:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 123
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v4, "AUTOMATION"

    const/16 v14, 0x17

    const-string/jumbo v15, "mPaaSAutomationAndroid"

    move-object/from16 v27, v6

    const/16 v6, 0x32

    invoke-direct {v2, v4, v14, v15, v6}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->AUTOMATION:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 128
    new-instance v4, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "ALIVE"

    const/16 v14, 0x18

    const-string/jumbo v15, "mPaaSAliveAndroid"

    move-object/from16 v28, v2

    const/4 v2, 0x1

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->ALIVE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 133
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "MPAAS_EXCEPTION"

    const/16 v14, 0x19

    const-string/jumbo v15, "mPaaSExceptionAndroid"

    move-object/from16 v29, v4

    const/16 v4, 0x64

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_EXCEPTION:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 138
    new-instance v6, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "MPAAS_PERFORMANCE"

    const/16 v15, 0x1a

    move-object/from16 v30, v2

    const-string/jumbo v2, "mPaaSPerformanceAndroid"

    invoke-direct {v6, v14, v15, v2, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 143
    new-instance v2, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v14, "MPAAS_BEHAVIOR"

    const/16 v15, 0x1b

    move-object/from16 v31, v6

    const-string/jumbo v6, "mPaaSBehaviorAndroid"

    invoke-direct {v2, v14, v15, v6, v4}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 148
    new-instance v4, Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v6, "USER_BEHAVIOR"

    const/16 v14, 0x1c

    const-string v15, "UserBehaviorAndroid"

    move-object/from16 v32, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/alipay/mobile/common/logging/api/BizType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->USER_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 3
    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/alipay/mobile/common/logging/api/BizType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v9, v2, v0

    const/16 v0, 0xa

    aput-object v7, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v24, v2, v0

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v26, v2, v0

    const/16 v0, 0x16

    aput-object v27, v2, v0

    const/16 v0, 0x17

    aput-object v28, v2, v0

    const/16 v0, 0x18

    aput-object v29, v2, v0

    const/16 v0, 0x19

    aput-object v30, v2, v0

    const/16 v0, 0x1a

    aput-object v31, v2, v0

    const/16 v0, 0x1b

    aput-object v32, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Lcom/alipay/mobile/common/logging/api/BizType;->$VALUES:[Lcom/alipay/mobile/common/logging/api/BizType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/BizType;->desc:Ljava/lang/String;

    .line 158
    iput p4, p0, Lcom/alipay/mobile/common/logging/api/BizType;->threshold:I

    .line 159
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/BizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/BizType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/BizType;
    .locals 1

    .line 3
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->$VALUES:[Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/BizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/BizType;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/BizType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreshold()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/BizType;->threshold:I

    return v0
.end method
