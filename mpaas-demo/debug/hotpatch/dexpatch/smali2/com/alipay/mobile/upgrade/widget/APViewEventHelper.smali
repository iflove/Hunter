.class public Lcom/alipay/mobile/upgrade/widget/APViewEventHelper;
.super Ljava/lang/Object;
.source "APViewEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;
    }
.end annotation


# static fields
.field private static clwrapper:Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWrapper(Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper;->clwrapper:Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;

    .line 17
    return-void
.end method

.method public static wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 20
    sget-object v0, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper;->clwrapper:Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;

    if-nez v0, :cond_0

    .line 21
    return-object p0

    .line 23
    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;->wrap(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static wrapItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper;->clwrapper:Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;

    if-nez v0, :cond_0

    .line 28
    return-object p0

    .line 30
    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper$ClickListenerWrapper;->wrap(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p0

    return-object p0
.end method
