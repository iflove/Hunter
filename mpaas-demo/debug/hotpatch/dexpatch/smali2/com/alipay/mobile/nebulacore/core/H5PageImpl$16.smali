.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1753
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1756
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setTextSize(I)V

    .line 1757
    return-void
.end method
