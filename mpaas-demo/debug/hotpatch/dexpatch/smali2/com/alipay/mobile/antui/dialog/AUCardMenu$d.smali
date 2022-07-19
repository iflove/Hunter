.class final Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;
.super Landroid/widget/RelativeLayout;
.source "AUCardMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUCardMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

.field private b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private c:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private d:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private e:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private f:Landroid/content/Context;

.field private g:Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;

.field private h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    .line 119
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->view_pop_list_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->f:Landroid/content/Context;

    .line 126
    sget v0, Lcom/alipay/mobile/antui/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 127
    sget v0, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->c:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 128
    sget v0, Lcom/alipay/mobile/antui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->d:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 129
    sget v0, Lcom/alipay/mobile/antui/R$id;->btn_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->e:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 130
    sget v0, Lcom/alipay/mobile/antui/R$id;->right_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$300(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setOnLoadImageListener(Lcom/alipay/mobile/antui/api/OnLoadImageListener;)V

    .line 132
    return-void
.end method

.method private a(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V
    .locals 4
    .param p1, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "iconInfo"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 214
    if-nez p2, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    iget v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 219
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->loading_error_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    .local v0, "defaultDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$300(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$300(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getImageView()Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/antui/api/OnLoadImageListener;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/antui/basic/AUImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 224
    :cond_1
    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconInfo type is \'IconInfo.TYPE_URL\',AUCardMenu must be set OnLoadImageListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "defaultDrawable":Landroid/graphics/drawable/Drawable;
    return-void

    :cond_2
    iget v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 227
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 228
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    return-void

    .line 229
    :cond_3
    iget v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 230
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 231
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-void

    .line 233
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 235
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;)V
    .locals 0
    .param p1, "optionBtnClick"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;

    .line 210
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->g:Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;

    .line 211
    return-void
.end method

.method public final a(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V
    .locals 8

    .line 135
    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 140
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v3, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->c:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v3, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->extInfo:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->extInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 153
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->extInfo:Ljava/util/Map;

    const-string v4, "leftIcon"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    iget-object v5, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->extInfo:Ljava/util/Map;

    const-string/jumbo v6, "rightIcon"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 155
    if-nez v0, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setVisibility(I)V

    .line 162
    goto :goto_4

    .line 156
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setVisibility(I)V

    .line 157
    iget-object v7, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->extInfo:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setLeftIconImage(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    if-eqz v5, :cond_5

    iget-object v4, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->extInfo:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setRightIconImage(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    goto :goto_4

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->h:Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setVisibility(I)V

    .line 167
    :goto_4
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->d:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v4, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->d:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_5

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->d:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 175
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->e:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->removeAllViews()V

    .line 176
    iget-object p1, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->optionBtn:Ljava/util/ArrayList;

    .line 177
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->e:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setVisibility(I)V

    .line 180
    nop

    :goto_6
    if-ge v1, v0, :cond_9

    .line 181
    new-instance v2, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->f:Landroid/content/Context;

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;Landroid/content/Context;)V

    .line 182
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->a()Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    move-result-object v4

    .line 183
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_8

    .line 184
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v6, v4, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v6, v4, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v6, p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v6, v4, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTag(Ljava/lang/Object;)V

    .line 188
    iget-object v4, v4, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    .line 191
    :cond_8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v6, v4, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v1, v4, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    move v1, v5

    .line 196
    :goto_7
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->e:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 197
    goto :goto_6

    .line 198
    :cond_9
    return-void

    .line 199
    :cond_a
    iget-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->e:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setVisibility(I)V

    .line 202
    return-void

    .line 136
    :cond_b
    :goto_8
    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessagePopItem is null or title is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$d;->g:Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;->a(I)V

    .line 207
    return-void
.end method
