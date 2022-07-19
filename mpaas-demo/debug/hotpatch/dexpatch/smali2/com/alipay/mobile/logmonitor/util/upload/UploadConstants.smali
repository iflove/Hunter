.class public Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;
.super Ljava/lang/Object;
.source "UploadConstants.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->b:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/loggw/extLog.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 50
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/loggw/report_diangosis_upload_status.htm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .line 30
    sget-boolean v0, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->b:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->b:Z

    .line 32
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->getLoggingGWFromManifest()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a:Ljava/lang/String;

    .line 34
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a:Ljava/lang/String;

    return-object v0
.end method
