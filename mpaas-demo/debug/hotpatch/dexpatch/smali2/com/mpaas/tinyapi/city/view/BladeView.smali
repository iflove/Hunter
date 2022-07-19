.class public Lcom/mpaas/tinyapi/city/view/BladeView;
.super Landroid/view/View;
.source "BladeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private a:Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;

.field b:[Ljava/lang/String;

.field choose:I

.field maxHeight:I

.field paint:Landroid/graphics/Paint;

.field showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    .line 19
    const/4 v1, -0x1

    iput v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->showBkg:Z

    .line 22
    iput v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    .line 19
    const/4 v1, -0x1

    iput v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->showBkg:Z

    .line 22
    iput v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 25
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    .line 19
    const/4 v1, -0x1

    iput v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->showBkg:Z

    .line 22
    iput v1, v0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->a()V

    .line 27
    return-void
.end method

.method private a()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mpaas/commonbiz/R$dimen;->BL_LARGE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    .line 41
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "item"    # I

    .line 126
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->a:Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;->a(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 82
    .local v1, "y":F
    iget v2, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 83
    .local v2, "oldChoose":I
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    array-length v5, v4

    div-int/2addr v3, v5

    const/4 v5, 0x0

    move v6, v5

    .line 84
    .local v6, "singleHeight":I
    move v6, v3

    iget v7, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    if-le v3, v7, :cond_0

    .line 85
    iget v6, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    .line 87
    :cond_0
    int-to-float v3, v6

    div-float v3, v1, v3

    float-to-int v3, v3

    .line 89
    .local v3, "c":I
    const/4 v7, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_2

    const/4 v8, 0x2

    if-eq v0, v8, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 102
    :cond_1
    if-eq v2, v3, :cond_4

    .line 103
    if-ltz v3, :cond_4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 104
    invoke-direct {p0, v3}, Lcom/mpaas/tinyapi/city/view/BladeView;->a(I)V

    .line 105
    iput v3, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 106
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->invalidate()V

    goto :goto_0

    .line 112
    :cond_2
    iput-boolean v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->showBkg:Z

    .line 113
    const/4 v4, -0x1

    iput v4, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 114
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->invalidate()V

    goto :goto_0

    .line 91
    :cond_3
    iput-boolean v7, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->showBkg:Z

    .line 92
    if-eq v2, v3, :cond_4

    .line 93
    if-ltz v3, :cond_4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 94
    invoke-direct {p0, v3}, Lcom/mpaas/tinyapi/city/view/BladeView;->a(I)V

    .line 95
    iput v3, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    .line 96
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->invalidate()V

    .line 117
    :cond_4
    :goto_0
    return v7
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-boolean v0, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->showBkg:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "#D7D7D7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    .line 54
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->getWidth()I

    move-result v1

    .line 55
    .local v1, "width":I
    iget-object v2, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    array-length v2, v2

    div-int v2, v0, v2

    const/4 v3, 0x0

    .line 56
    .local v3, "singleHeight":I
    move v3, v2

    iget v4, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    if-le v2, v4, :cond_1

    .line 57
    iget v3, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->maxHeight:I

    .line 59
    :cond_1
    div-int/lit8 v2, v1, 0x2

    .line 60
    .local v2, "halfWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 61
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    const-string v6, "#8e8e8e"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    const/16 v5, 0x190

    if-ge v0, v5, :cond_2

    .line 63
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mpaas/commonbiz/R$dimen;->BL_SMALL:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/BladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mpaas/commonbiz/R$dimen;->BL_LARGE:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    :goto_1
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->choose:I

    if-ne v4, v5, :cond_3

    .line 69
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    const-string v6, "#3399ff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    :cond_3
    int-to-float v5, v2

    iget-object v6, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 72
    .local v5, "xPos":F
    mul-int v6, v3, v4

    add-int/2addr v6, v3

    int-to-float v6, v6

    .line 73
    .local v6, "yPos":F
    iget-object v7, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    .end local v5    # "xPos":F
    .end local v6    # "yPos":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 76
    return-void
.end method

.method public setLetters([Ljava/lang/String;)V
    .locals 0
    .param p1, "letters"    # [Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->b:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setOnItemClickListener(Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;

    .line 122
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/BladeView;->a:Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;

    .line 123
    return-void
.end method
