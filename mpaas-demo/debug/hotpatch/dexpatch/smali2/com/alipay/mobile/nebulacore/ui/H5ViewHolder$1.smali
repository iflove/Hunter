.class Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;
.super Ljava/lang/Object;
.source "H5ViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;->b:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 310
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x0

    .line 311
    .local v1, "opacity":Landroid/view/animation/AlphaAnimation;
    move-object v1, v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    return-void
.end method
