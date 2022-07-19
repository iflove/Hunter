.class public abstract Lcom/alipay/mobile/antui/picker/AUCenterPopup;
.super Ljava/lang/Object;
.source "AUCenterPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/DialogInterface$OnKeyListener;"
    }
.end annotation


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field protected activity:Landroid/app/Activity;

.field private height:I

.field private isFillScreen:Z

.field private isHalfScreen:Z

.field private popup:Lcom/alipay/mobile/antui/picker/AUPopup;

.field protected screenHeightPixels:I

.field protected screenWidthPixels:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->width:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->isFillScreen:Z

    .line 32
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->isHalfScreen:Z

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->activity:Landroid/app/Activity;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->screenWidthPixels:I

    .line 43
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->screenHeightPixels:I

    .line 44
    new-instance v1, Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/antui/picker/AUPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    .line 45
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/antui/picker/AUPopup;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 46
    return-void
.end method

.method private onShowPrepare()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->setContentViewBefore()V

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->makeContentView()Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/picker/AUPopup;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->setContentViewAfter(Landroid/view/View;)V

    .line 63
    const-string v1, "compositeui"

    const-string v2, "do something before popup show"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->width:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    if-nez v1, :cond_2

    .line 66
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->screenWidthPixels:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->width:I

    .line 67
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->isFillScreen:Z

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    goto :goto_0

    .line 69
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->isHalfScreen:Z

    if-eqz v1, :cond_1

    .line 70
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->screenHeightPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, -0x2

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    .line 75
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->width:I

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/antui/picker/AUPopup;->setSize(II)V

    .line 76
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUPopup;->dismiss()V

    .line 185
    const-string v0, "compositeui"

    const-string/jumbo v1, "popup dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUPopup;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected abstract makeContentView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 201
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animRes"    # I

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/picker/AUPopup;->setAnimationStyle(I)V

    .line 117
    return-void
.end method

.method protected setContentViewAfter(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 108
    return-void
.end method

.method protected setContentViewBefore()V
    .locals 0

    .line 100
    return-void
.end method

.method public setFillScreen(Z)V
    .locals 0
    .param p1, "fillScreen"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->isFillScreen:Z

    .line 85
    return-void
.end method

.method public setHalfScreen(Z)V
    .locals 0
    .param p1, "halfScreen"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->isHalfScreen:Z

    .line 94
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 158
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    .line 159
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/picker/AUPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 126
    const-string v0, "compositeui"

    const-string/jumbo v1, "popup setOnDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 137
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->width:I

    .line 138
    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->height:I

    .line 139
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 148
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->width:I

    .line 149
    return-void
.end method

.method public show()V
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->onShowPrepare()V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCenterPopup;->popup:Lcom/alipay/mobile/antui/picker/AUPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUPopup;->show()V

    .line 177
    const-string v0, "compositeui"

    const-string/jumbo v1, "popup show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
