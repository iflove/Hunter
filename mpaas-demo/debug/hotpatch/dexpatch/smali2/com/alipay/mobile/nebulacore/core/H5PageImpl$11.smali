.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Z)V
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

    .line 1193
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$300(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check dsl overtime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$300(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 1200
    :cond_0
    return-void
.end method
