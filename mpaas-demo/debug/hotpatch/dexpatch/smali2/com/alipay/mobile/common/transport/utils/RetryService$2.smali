.class Lcom/alipay/mobile/common/transport/utils/RetryService$2;
.super Ljava/lang/Object;
.source "RetryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/utils/RetryService;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/utils/RetryService;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$val:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/utils/RetryService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/utils/RetryService;

    .line 235
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$2;->this$0:Lcom/alipay/mobile/common/transport/utils/RetryService;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$2;->val$val:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 238
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 239
    .local v2, "context":Landroid/content/Context;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v3, "net_retry"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$2;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/utils/RetryService$2;->val$val:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    return-void
.end method
