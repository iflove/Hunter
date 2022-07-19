.class Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2$1;
.super Ljava/lang/Object;
.source "H5TabBarPlugin.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;

    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2$1;->a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2$1;->a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 309
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 299
    return-void
.end method
