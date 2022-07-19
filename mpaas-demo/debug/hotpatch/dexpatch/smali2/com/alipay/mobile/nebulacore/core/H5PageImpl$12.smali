.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1235
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$400(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$400(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    if-eqz v0, :cond_0

    .line 1240
    const-string v0, "H5PageImpl"

    const-string v1, "collectJsApiHandler overtime, do exit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 1243
    :cond_0
    return-void
.end method
