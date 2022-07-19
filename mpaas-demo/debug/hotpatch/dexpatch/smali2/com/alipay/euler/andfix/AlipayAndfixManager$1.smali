.class Lcom/alipay/euler/andfix/AlipayAndfixManager$1;
.super Ljava/lang/Object;
.source "AlipayAndfixManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/euler/andfix/AlipayAndfixManager;->initCrashOnStartup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/euler/andfix/AlipayAndfixManager;


# direct methods
.method constructor <init>(Lcom/alipay/euler/andfix/AlipayAndfixManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/euler/andfix/AlipayAndfixManager;

    .line 162
    iput-object p1, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager$1;->this$0:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpload(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isStartupCrash()Z

    move-result v0

    .line 168
    .local v0, "startupCrash":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnNativeCrashUpload(log=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_0
    const-string v3, "****"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]), startupCrash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicRelease_AndFix"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager$1;->this$0:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "App_Exit"

    # invokes: Lcom/alipay/euler/andfix/AlipayAndfixManager;->a(Ljava/io/InputStream;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->access$000(Lcom/alipay/euler/andfix/AlipayAndfixManager;Ljava/io/InputStream;Ljava/lang/String;)Z

    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager$1;->this$0:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->filter(Ljava/lang/String;)Z

    .line 176
    return-void
.end method
