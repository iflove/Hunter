.class public Lcom/alipay/mobile/antui/segement/AUScrollLayout;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUScrollLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private divideAutoSize:Z

.field private maxWidth:I

.field private noScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->divideAutoSize:Z

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->initScreenWidth()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->divideAutoSize:Z

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->initScreenWidth()V

    .line 32
    return-void
.end method

.method private initScreenWidth()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 40
    .local v2, "res":Landroid/content/res/Resources;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 43
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .local v0, "screenWdith":I
    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    .line 47
    .end local v0    # "screenWdith":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "1111, maxWidth:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 87
    move-object v0, p0

    sget-object v1, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "divideAutoSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->divideAutoSize:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", noScroll:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->noScroll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", maxWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean v1, v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->noScroll:Z

    if-eqz v1, :cond_2

    .line 92
    iget-boolean v1, v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->divideAutoSize:Z

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v1

    .line 94
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getPaddingTop()I

    move-result v2

    .line 95
    .local v2, "childTop":I
    iget v3, v0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    div-int/2addr v3, v1

    .line 96
    .local v3, "childWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    const/4 v6, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 97
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 99
    .local v6, "childView":Landroid/view/View;
    move-object v6, v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 102
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    .line 105
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v3, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 106
    .local v8, "paddingLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 107
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 106
    invoke-virtual {v6, v8, v9, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 112
    .local v9, "childHeight":I
    mul-int v10, v4, v3

    .line 113
    .local v10, "childLeft":I
    add-int v11, v10, v3

    add-int v12, v2, v9

    invoke-virtual {v6, v10, v2, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 96
    .end local v6    # "childView":Landroid/view/View;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "paddingLeft":I
    .end local v9    # "childHeight":I
    .end local v10    # "childLeft":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "size":I
    .end local v2    # "childTop":I
    .end local v3    # "childWidth":I
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    :cond_1
    return-void

    .line 116
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onLayout(ZIIII)V

    .line 121
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getPaddingLeft()I

    move-result v0

    .line 55
    .local v0, "paddingLeft":I
    sget-object v1, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2222, maxWidth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,widthMeasureSpec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getPaddingRight()I

    move-result v1

    .line 57
    .local v1, "paddingRight":I
    move v2, v0

    .line 59
    .local v2, "childLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildCount()I

    move-result v4

    .local v4, "childCount":I
    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 60
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 61
    .local v5, "child":Landroid/view/View;
    move-object v5, v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 62
    invoke-virtual {p0, v5, p1, p2}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->measureChild(Landroid/view/View;II)V

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 68
    .local v6, "childWidth":I
    sget-object v7, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "3333, childWidth:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    add-int v7, v2, v6

    add-int/2addr v7, v1

    iget v8, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    if-le v7, v8, :cond_0

    .line 70
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->noScroll:Z

    goto :goto_1

    .line 72
    :cond_0
    add-int/2addr v2, v6

    .line 73
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->noScroll:Z

    .line 59
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childWidth":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "i":I
    .end local v4    # "childCount":I
    :cond_2
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->noScroll:Z

    if-eqz v3, :cond_3

    .line 79
    iget v3, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->maxWidth:I

    invoke-virtual {p0, v3, p2}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->setMeasuredDimension(II)V

    return-void

    .line 81
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onMeasure(II)V

    .line 83
    return-void
.end method

.method public setDivideAutoSize(Z)V
    .locals 0
    .param p1, "autoSize"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->divideAutoSize:Z

    .line 36
    return-void
.end method
