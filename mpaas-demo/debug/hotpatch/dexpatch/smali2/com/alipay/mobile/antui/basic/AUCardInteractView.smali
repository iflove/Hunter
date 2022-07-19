.class public Lcom/alipay/mobile/antui/basic/AUCardInteractView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUCardInteractView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;,
        Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;,
        Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;
    }
.end annotation


# static fields
.field public static final GREY_STYLE:Ljava/lang/String; = "grey"


# instance fields
.field private mInteractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;

.field private mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUCardInteractView;)Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUCardInteractView;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;

    return-object v0
.end method

.method private getparam()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 128
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 130
    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->setOrientation(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->initStyleByTheme(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private newChildView()Landroid/view/View;
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_card_interact_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;-><init>(B)V

    .line 144
    .local v2, "holder":Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;
    move-object v2, v1

    sget v3, Lcom/alipay/mobile/antui/R$id;->interact_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v3, v1, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 145
    sget v1, Lcom/alipay/mobile/antui/R$id;->interact_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v1, v2, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;->a:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    return-object v0
.end method

.method private setChildView(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "interaction"    # Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;
    .param p3, "position"    # I

    .line 151
    if-nez p2, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    .line 156
    .local v0, "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;
    new-instance v1, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUCardInteractView;Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v2, p2, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->text:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->colorStyle:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->setTextView(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;->a:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v2, p2, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    .line 167
    .end local v0    # "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;
    :cond_1
    return-void
.end method

.method private setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V
    .locals 4
    .param p1, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "iconInfo"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 179
    const/16 v0, 0x8

    if-eqz p2, :cond_3

    .line 180
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 181
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    if-eqz v0, :cond_4

    .line 183
    iget-object v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getImageView()Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/api/OnLoadImageListener;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/antui/basic/AUImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 185
    :cond_0
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 186
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 187
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    return-void

    .line 188
    :cond_1
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 189
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 190
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-void

    .line 192
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 195
    :cond_3
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 197
    :cond_4
    return-void
.end method

.method private setTextView(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "textView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "colorStyle"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const-string v0, "grey"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_ASS_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_HOME_PAGE_TITLEBAR_BG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 176
    return-void
.end method


# virtual methods
.method public getSupportIconfontViews()[Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 6

    .line 200
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 201
    .local v1, "childCount":I
    move v1, v0

    new-array v0, v0, [Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 202
    .local v0, "childViews":[Lcom/alipay/mobile/antui/iconfont/AUIconView;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 203
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 204
    .local v3, "childAt":Landroid/view/View;
    move-object v3, v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    .line 206
    .local v4, "holder":Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;
    iget-object v5, v4, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;->a:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    aput-object v5, v0, v2

    .line 202
    .end local v3    # "childAt":Landroid/view/View;
    .end local v4    # "holder":Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 51
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 66
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    return-void
.end method

.method public setInteractions(Ljava/util/List;)V
    .locals 5
    .param p1, "interactions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;",
            ">;)V"
        }
    .end annotation

    .line 80
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mInteractions:Ljava/util/List;

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mInteractions:Ljava/util/List;

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->newChildView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getparam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 92
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    .local v0, "oldViewCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 94
    .local v1, "newViewCount":I
    if-ge v0, v1, :cond_4

    .line 95
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->newChildView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getparam()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 98
    :cond_4
    if-le v0, v1, :cond_5

    .line 99
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->removeViews(II)V

    .line 102
    .end local v0    # "oldViewCount":I
    .end local v1    # "newViewCount":I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mInteractions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mInteractions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mInteractions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 106
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mInteractions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->setChildView(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 108
    .end local v0    # "i":I
    :cond_6
    return-void

    .line 81
    :cond_7
    :goto_4
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;

    .line 123
    return-void
.end method

.method public setmOnItemClickListener(Lcom/alipay/mobile/antui/api/OnLoadImageListener;)V
    .locals 0
    .param p1, "onLoadImageListener"    # Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    .line 214
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 71
    return-void
.end method

.method public updateInteraction(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getChildCount()I

    move-result v0

    .line 112
    .local v0, "childCount":I
    if-ge p1, v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    .local v2, "childView":Landroid/view/View;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;

    .line 116
    iget-object v1, v1, Lcom/alipay/mobile/antui/basic/AUCardInteractView$a;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .end local v2    # "childView":Landroid/view/View;
    :cond_0
    return-void
.end method
