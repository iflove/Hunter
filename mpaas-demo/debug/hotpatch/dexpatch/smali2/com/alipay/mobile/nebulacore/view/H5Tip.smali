.class public Lcom/alipay/mobile/nebulacore/view/H5Tip;
.super Ljava/lang/Object;
.source "H5Tip.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Tip"

.field static a:Landroid/os/Handler;

.field static b:Ljava/lang/Runnable;

.field private static volatile c:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->a:Landroid/os/Handler;

    .line 27
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    .line 28
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissTip()V
    .locals 4

    .line 83
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 85
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->a:Landroid/os/Handler;

    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    :goto_0
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "H5Tip"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 90
    :goto_1
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    throw v1
.end method

.method public static showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/ViewGroup;
    .param p2, "tip"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, "anchorViewGone":Z
    :goto_0
    const-class v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;

    monitor-enter v3

    .line 34
    :try_start_0
    sget-object v4, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    monitor-exit v3

    return-void

    .line 37
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_tip:I

    invoke-virtual {v4, v5, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 39
    .local v4, "view":Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    .line 41
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_false_image:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 45
    .local v3, "btnClose":Landroid/widget/Button;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 46
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_description:I

    .line 47
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x0

    .line 48
    .local v6, "h5_description":Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .end local v6    # "h5_description":Landroid/widget/TextView;
    :cond_2
    sget-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 52
    sget-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 53
    sget-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 55
    if-nez v0, :cond_3

    .line 56
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1

    .line 58
    :cond_3
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    const/16 v5, 0x30

    invoke-virtual {v1, p1, v5, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "globalException":Ljava/lang/Exception;
    const-string v2, "H5Tip"

    const-string v5, "exception detail."

    invoke-static {v2, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v1    # "globalException":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5Tip$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/view/H5Tip$1;-><init>()V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5Tip$2;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/view/H5Tip$2;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    sput-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->a:Landroid/os/Handler;

    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void

    .line 41
    .end local v3    # "btnClose":Landroid/widget/Button;
    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
