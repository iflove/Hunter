.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParamsX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1635
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # invokes: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$500(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 1639
    return-void
.end method
