.class public Lcom/alipay/mobile/liteprocess/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final APP_TYPE:Ljava/lang/String; = "APP_TYPE"

.field public static final CROSS_PROCESS_BY_ACTIVITY_TIMESTEP:Ljava/lang/String; = "CrossProcessByActivity"

.field public static final CROSS_PROCESS_BY_PRESERVICE_TIMESTEP:Ljava/lang/String; = "CrossProcessByPreService"

.field public static final EXTRA_MSG_BIZ:Ljava/lang/String; = "serverMsgBiz"

.field public static final FL_RESTORE_DATA:Ljava/lang/String; = "FL_RESTORE_DATA"

.field public static final KEY_LITE_PROCESS_ID:Ljava/lang/String; = "LITE_PROCESS_ID"

.field public static final KEY_NEED_LITE_PROCESS:Ljava/lang/String; = "NEED_LITE_PROCESS"

.field public static final LOGGING_INFO:Ljava/lang/String; = "LITE_PROCESS_LOGGING_INFO"

.field public static final LPID_MAIN:I = 0x0

.field public static final NEBULAX_EXTRA_LPID:Ljava/lang/String; = "lpid"

.field public static final NEBULAX_IPC_BIZ:Ljava/lang/String; = "NebulaXServer"

.field public static final NEBULAX_WHAT_PROCESS_READY:I = 0x0

.field public static final PARAMS:Ljava/lang/String; = "LITE_PROCESS_PARAMS"

.field public static final PERF_IS_LOCAL:Ljava/lang/String; = "is_local"

.field public static final PERF_IS_PRELOAD:Ljava/lang/String; = "is_preload"

.field public static final PERF_OPENAPP_TIME:Ljava/lang/String; = "perf_open_app_time"

.field public static final RESTORE_APP:Ljava/lang/String; = "RESTORE_APP"

.field public static final SCENE_PARAMS:Ljava/lang/String; = "LITE_PROCESS_SCENE_PARAMS"

.field public static final START_APP_IN_CURRENT_PROCESS:Ljava/lang/String; = "START_APP_IN_CURRENT_PROCESS"

.field public static final START_APP_IN_LITE:Ljava/lang/String; = "START_APP_IN_LITE"

.field public static final SchemeStartActivity:Ljava/lang/String; = "com.alipay.mobile.framework.service.common.SchemeStartActivity"

.field public static final TAG:Ljava/lang/String; = "LiteProcess"

.field public static final TAG_SAIL:Ljava/lang/String; = "LiteProcess.SAIL"

.field public static final TARGETAPPID:Ljava/lang/String; = "TARGETAPPID"

.field public static final TINY_SERVICE:Ljava/lang/String; = "com.alipay.tiny.api.TinyService"

.field public static final TYPE_H5:Ljava/lang/String; = "H5App"

.field public static final TYPE_RN:Ljava/lang/String; = "tinyApp"

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-string v0, "com.eg.android.AlipayGphone.AlipayLogin"

    sput-object v0, Lcom/alipay/mobile/liteprocess/Const;->a:Ljava/lang/String;

    .line 80
    const-string v0, "com.alipay.mobile.nebulacore.ui.H5MainProcTinyActivity"

    sput-object v0, Lcom/alipay/mobile/liteprocess/Const;->b:Ljava/lang/String;

    .line 82
    const-string v0, "com.alipay.mobile.nebulacore.ui.H5MainProcTinyTransActivity"

    sput-object v0, Lcom/alipay/mobile/liteprocess/Const;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
