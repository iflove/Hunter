.class Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;
.super Ljava/lang/Object;
.source "BundleLoadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleDefinitions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

.field final synthetic val$bundleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    .line 299
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;->this$0:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    iput-object p2, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;->val$bundleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;->this$0:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper$1;->val$bundleName:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->access$000(Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;Ljava/lang/String;)V

    .line 302
    return-void
.end method
