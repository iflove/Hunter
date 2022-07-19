.class Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;
.super Landroid/widget/BaseAdapter;
.source "RecentUseTinyAppPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a(Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 136
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;

    .local v1, "model":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    const/4 v2, 0x0

    move-object v3, v2

    .line 139
    .local v3, "viewHolder":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;
    if-nez p2, :cond_1

    .line 140
    const/high16 v4, 0x42300000    # 44.0f

    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->b(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    .line 141
    .local v4, "imageViewSize":I
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    iget-object v6, v6, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v2

    .line 142
    .local v6, "appContainer":Landroid/widget/LinearLayout;
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    new-instance v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 144
    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;-><init>(II)V

    .line 143
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 147
    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    move-object v8, v6

    .line 150
    .end local p2    # "convertView":Landroid/view/View;
    .local v8, "convertView":Landroid/view/View;
    new-instance v10, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;-><init>(B)V

    move-object v3, v10

    .line 151
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-boolean v10, v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->fillingMark:Z

    if-eqz v10, :cond_0

    .line 153
    return-object v8

    .line 163
    :cond_0
    new-instance v10, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;

    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    iget-object v12, v12, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    invoke-direct {v10, v12}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v10, "appIcon":Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v13, v2

    .line 165
    .local v13, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v13, v12

    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    iget-object v12, v12, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    const/high16 v14, 0x40e00000    # 7.0f

    invoke-static {v12, v14}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->setRadius(I)V

    .line 167
    invoke-virtual {v10, v13}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    sget v12, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->recent_use_tiny_app_icon_bg:I

    invoke-virtual {v10, v12}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->setBackgroundResource(I)V

    .line 169
    iget-object v12, v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->iconUrl:Ljava/lang/String;

    new-instance v14, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$TinyAppImageLoader;

    iget-object v15, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-direct {v14, v15, v10}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$TinyAppImageLoader;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;Landroid/widget/ImageView;)V

    invoke-static {v12, v14}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 172
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v12, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    iget-object v14, v14, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    invoke-direct {v12, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v14, v2

    .line 175
    .local v14, "appName":Landroid/widget/TextView;
    move-object v14, v12

    iget-object v15, v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 179
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 181
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v7, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v2, "appNameLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v7

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 185
    const/16 v5, 0x19

    const/4 v7, 0x6

    invoke-virtual {v2, v7, v5, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    invoke-virtual {v6, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iput-object v10, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->a:Landroid/widget/ImageView;

    .line 189
    iput-object v14, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->b:Landroid/widget/TextView;

    .line 190
    iput-object v6, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->c:Landroid/view/View;

    .line 192
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1$1;

    invoke-direct {v5, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .end local v2    # "appNameLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "imageViewSize":I
    .end local v6    # "appContainer":Landroid/widget/LinearLayout;
    .end local v10    # "appIcon":Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;
    .end local v13    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "appName":Landroid/widget/TextView;
    goto :goto_0

    .line 201
    .end local v8    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;

    .line 202
    move-object v3, v4

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 203
    iget-boolean v4, v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->fillingMark:Z

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    return-object p2

    .line 208
    :cond_2
    iget-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->iconUrl:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$TinyAppImageLoader;

    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    iget-object v6, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$TinyAppImageLoader;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;Landroid/widget/ImageView;)V

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 211
    iget-object v2, v3, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;->c:Landroid/view/View;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1$2;

    invoke-direct {v4, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :cond_3
    move-object/from16 v8, p2

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v8    # "convertView":Landroid/view/View;
    :goto_0
    return-object v8
.end method
