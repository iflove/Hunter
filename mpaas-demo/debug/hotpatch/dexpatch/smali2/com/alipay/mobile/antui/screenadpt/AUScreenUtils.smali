.class public Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;
.super Ljava/lang/Object;
.source "AUScreenUtils.java"


# static fields
.field private static mIsAPMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteListAP:Ljava/lang/String;

.field private static preCheck:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mWhiteListAP:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mIsAPMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "auView"    # Lcom/alipay/mobile/antui/basic/AUViewInterface;

    .line 41
    sget-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->preCheck:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 42
    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getAPDensity(Landroid/content/Context;)F

    move-result v0

    invoke-static {p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getDensity(Landroid/content/Context;)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->preCheck:Ljava/lang/Boolean;

    .line 44
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->preCheck:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    return v2

    .line 47
    :cond_2
    sget-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mWhiteListAP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mWhiteListAP:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 49
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 50
    .local v0, "parentView":Landroid/view/ViewParent;
    invoke-interface {p2}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->isAP()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/alipay/mobile/antui/basic/AUViewInterface;

    if-eqz v3, :cond_3

    .line 51
    move-object v3, v0

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUViewInterface;

    invoke-interface {v3}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->isAP()Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->setAP(Ljava/lang/Boolean;)V

    .line 54
    .end local v0    # "parentView":Landroid/view/ViewParent;
    :cond_3
    const-string v0, ""

    .line 55
    .local v0, "hashCode":Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v3, Lcom/alipay/mobile/antui/R$styleable;->AUScreenAdapt:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 59
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v4, v3

    sget v5, Lcom/alipay/mobile/antui/R$styleable;->AUScreenAdapt_isAP:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    .line 60
    sget v3, Lcom/alipay/mobile/antui/R$styleable;->AUScreenAdapt_isAP:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->setAP(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 62
    :cond_4
    sget-object v3, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mIsAPMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    sget-object v1, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mIsAPMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 65
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 66
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    aget-object v7, v3, v6

    .line 67
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.alipay.android.phone.discovery.o2ohome.O2oWidgetGroup"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 68
    sget-object v1, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mIsAPMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return v2

    .line 66
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 73
    :cond_7
    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->isAP()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 76
    invoke-interface {p2}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->isAP()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 78
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 79
    sget-object v2, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mIsAPMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_a
    return v1

    .line 83
    .end local v0    # "hashCode":Ljava/lang/String;
    :cond_b
    return v2
.end method

.method public static setWhiteListAP(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "whiteListAP"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/Object;

    .line 29
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "emptyList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string p0, ""

    .line 35
    :cond_1
    sput-object p0, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->mWhiteListAP:Ljava/lang/String;

    .line 36
    return-void

    .line 30
    :cond_2
    :goto_0
    return-void
.end method
