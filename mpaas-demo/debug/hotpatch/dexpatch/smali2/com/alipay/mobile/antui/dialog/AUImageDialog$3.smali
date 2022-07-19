.class final Lcom/alipay/mobile/antui/dialog/AUImageDialog$3;
.super Ljava/lang/Object;
.source "AUImageDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 568
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->realDismiss()V

    .line 581
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 576
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 572
    return-void
.end method
