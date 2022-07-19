.class public Lcom/alipay/mobile/antui/basic/AUToast;
.super Ljava/lang/Object;
.source "AUToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUToast$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOp(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I

    .line 191
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 192
    .local v2, "object":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 194
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x3

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 195
    .local v1, "cArg":[Ljava/lang/Class;
    move-object v1, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 196
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 197
    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v1, v7

    .line 198
    const-string v4, "checkOp"

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 199
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 199
    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 201
    .end local v1    # "cArg":[Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleToast"

    invoke-static {v4, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1
.end method

.method private static fixToast(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;

    .line 104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    const-string v1, "enable_toast_fix"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const-string v0, "AUToast"

    const-string v1, "fixToast but disabled"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 110
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 113
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string/jumbo v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 114
    .local v2, "mTNField":Ljava/lang/reflect/Field;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "mTN":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mHandler"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 117
    .local v1, "mTNmHandlerField":Ljava/lang/reflect/Field;
    move-object v1, v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 119
    .local v3, "tnHandler":Landroid/os/Handler;
    new-instance v4, Lcom/alipay/mobile/antui/basic/AUToast$a;

    invoke-direct {v4, v3}, Lcom/alipay/mobile/antui/basic/AUToast$a;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "mTN":Ljava/lang/Object;
    .end local v1    # "mTNmHandlerField":Ljava/lang/reflect/Field;
    .end local v2    # "mTNField":Ljava/lang/reflect/Field;
    .end local v3    # "tnHandler":Landroid/os/Handler;
    return-void

    :catch_0
    move-exception v0

    .line 122
    :cond_1
    return-void
.end method

.method public static isNotifyAllowed(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    move v2, v1

    .line 175
    .local v2, "version":I
    move v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_1

    .line 176
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 177
    .local v5, "object":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    const-string v6, "getImportance"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 180
    .local v4, "lMethod":Ljava/lang/reflect/Method;
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    return v3

    :cond_0
    return v1

    .line 181
    .end local v4    # "lMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isNotifyChangedAllowed"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AUToast"

    invoke-static {v6, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v5    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 184
    :cond_1
    const/16 v0, 0x12

    if-lt v2, v0, :cond_3

    .line 185
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/basic/AUToast;->checkOp(Landroid/content/Context;I)I

    move-result v0

    if-eq v3, v0, :cond_2

    return v3

    :cond_2
    return v1

    .line 184
    :cond_3
    :goto_0
    nop

    .line 187
    return v3
.end method

.method public static makeToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tipSrcId"    # I
    .param p2, "duration"    # I

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    .local v0, "tipSrc":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p2}, Lcom/alipay/mobile/antui/basic/AUToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    return-object v1
.end method

.method public static makeToast(Landroid/content/Context;III)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I
    .param p2, "tipSrcId"    # I
    .param p3, "duration"    # I

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 47
    .local v0, "tipSrc":Ljava/lang/CharSequence;
    invoke-static {p0, p1, v0, p3}, Lcom/alipay/mobile/antui/basic/AUToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    return-object v1
.end method

.method public static makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I
    .param p2, "tipSrc"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tipSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makeToast : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUToast"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 77
    .local v1, "toast":Landroid/widget/Toast;
    invoke-static {p0, v1}, Lcom/alipay/mobile/antui/basic/AUToast;->fixToast(Landroid/content/Context;Landroid/widget/Toast;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 80
    .local v3, "toastView":Landroid/view/View;
    if-eqz p1, :cond_2

    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$layout;->au_toast_with_img:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 82
    move-object v3, v2

    sget v4, Lcom/alipay/mobile/antui/R$id;->index_drawable:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .local v2, "indexDrawable":Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/alipay/mobile/antui/utils/ToolUtils;->judgeRes(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "string"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    new-instance v5, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    const/4 v6, -0x1

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {p0, v7}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7, p1}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    .line 85
    .local v4, "iconDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .end local v4    # "iconDrawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->toast_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 90
    .local v4, "size":I
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 91
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .end local v2    # "indexDrawable":Landroid/widget/ImageView;
    .end local v4    # "size":I
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_2

    .line 93
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$layout;->au_toast:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    :goto_2
    sget v4, Lcom/alipay/mobile/antui/R$id;->tip_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    .local v2, "tipContent":Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 99
    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 100
    return-object v1
.end method

.method public static showSuperToast(Landroid/app/Activity;ILjava/lang/CharSequence;)Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "drawableId"    # I
    .param p2, "tipSrc"    # Ljava/lang/CharSequence;

    .line 156
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/basic/AUToast;->showSuperToast(Landroid/app/Activity;ILjava/lang/CharSequence;I)Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static showSuperToast(Landroid/app/Activity;ILjava/lang/CharSequence;I)Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "drawableId"    # I
    .param p2, "tipSrc"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 160
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;-><init>(Landroid/app/Activity;I)V

    const/4 v1, 0x0

    .line 161
    .local v1, "mSuperToast":Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;
    move-object v1, v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->setMessage(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 163
    const/16 v0, 0xdac

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->showTime(I)V

    goto :goto_0

    .line 164
    :cond_0
    if-nez p3, :cond_1

    .line 165
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->showTime(I)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->showTime(I)V

    .line 169
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;->show()V

    .line 170
    return-object v1
.end method

.method public static showSysToast(Landroid/app/Activity;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "drawableId"    # I
    .param p2, "tipSrc"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 150
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    .local v1, "toast":Landroid/widget/Toast;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    return-object v1
.end method

.method public static showToastWithSuper(Landroid/app/Activity;ILjava/lang/CharSequence;I)Z
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "drawableId"    # I
    .param p2, "tipSrc"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 135
    const-string v0, "AUToast"

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/antui/basic/AUToast;->isNotifyAllowed(Landroid/content/Context;)Z

    move-result v1

    .line 136
    .local v1, "isAllowed":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAllowed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-nez v1, :cond_0

    .line 138
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUToast;->showSuperToast(Landroid/app/Activity;ILjava/lang/CharSequence;I)Lcom/alipay/mobile/antui/basic/AUToastPopupWindow;

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUToast;->showSysToast(Landroid/app/Activity;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 143
    .end local v1    # "isAllowed":Z
    :catchall_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    return v0
.end method
