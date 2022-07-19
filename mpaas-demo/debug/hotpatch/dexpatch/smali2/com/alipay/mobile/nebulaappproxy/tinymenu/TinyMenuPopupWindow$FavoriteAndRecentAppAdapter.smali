.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "TinyMenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteAndRecentAppAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;

    .line 1149
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 1158
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1163
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 1168
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    const/4 v1, 0x0

    .line 1169
    .local v1, "model":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1179
    move-object v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    const/4 v2, 0x0

    move-object v3, v2

    .line 1180
    .local v3, "model":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;
    move-object v3, v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move-object v1, v2

    .line 1183
    .local v1, "viewHolder":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;
    if-nez p2, :cond_7

    .line 1184
    const/high16 v4, 0x42340000    # 45.0f

    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F
    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    .line 1185
    .local v4, "imageViewSize":I
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v2

    .line 1186
    .local v6, "appContainer":Landroid/widget/LinearLayout;
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1187
    new-instance v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 1188
    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentTinyAppItemWidth:I
    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$2200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v5, v8, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;-><init>(II)V

    .line 1187
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1192
    move-object v8, v6

    .line 1193
    .end local p2    # "convertView":Landroid/view/View;
    .local v8, "convertView":Landroid/view/View;
    new-instance v10, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;

    invoke-direct {v10, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;)V

    move-object v1, v10

    .line 1194
    invoke-virtual {v8, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1195
    if-eqz v3, :cond_1

    iget-boolean v10, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->fillingMark:Z

    if-eqz v10, :cond_1

    .line 1196
    return-object v8

    .line 1198
    :cond_1
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1199
    .local v10, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    if-nez v11, :cond_3

    .line 1200
    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;

    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;-><init>(Landroid/content/Context;)V

    .line 1201
    .local v11, "appIcon":Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1202
    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static {v12, v13}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->setRadius(I)V

    .line 1203
    invoke-virtual {v11, v10}, Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    if-eqz v3, :cond_2

    .line 1205
    iget-object v12, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->iconUrl:Ljava/lang/String;

    new-instance v13, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;

    iget-object v14, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    invoke-direct {v13, v14, v11}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/widget/ImageView;)V

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 1207
    :cond_2
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1208
    iput-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .end local v11    # "appIcon":Lcom/alipay/mobile/nebulaappproxy/view/TinyRoundImageView;
    goto :goto_0

    .line 1209
    :cond_3
    iget v11, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    if-ne v11, v7, :cond_5

    .line 1210
    new-instance v11, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alipay/mobile/antui/iconfont/AUIconView;-><init>(Landroid/content/Context;)V

    .line 1211
    .local v11, "fontIcon":Lcom/alipay/mobile/antui/iconfont/AUIconView;
    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1212
    .local v2, "resources":Landroid/content/res/Resources;
    move-object v2, v12

    if-eqz v12, :cond_4

    .line 1213
    sget v12, Lcom/alipay/mobile/nebulaappproxy/R$string;->more_recent_app_back_to_tiny_home:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1214
    .local v12, "menuIconFontUnicode":Ljava/lang/String;
    const-string v13, "iconfont"

    invoke-virtual {v11, v13}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v13, "tinyfont"

    invoke-virtual {v11, v13}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 1216
    invoke-virtual {v11, v12}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 1217
    const-string v13, "#9da2a7"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 1218
    invoke-virtual {v11, v10}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    const-string v13, "25dp"

    invoke-virtual {v11, v13}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 1220
    sget v13, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_recent_app_more_bg:I

    invoke-virtual {v11, v13}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setBackgroundResource(I)V

    .line 1222
    .end local v12    # "menuIconFontUnicode":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1223
    iput-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->fontIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_1

    .line 1209
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v11    # "fontIcon":Lcom/alipay/mobile/antui/iconfont/AUIconView;
    :cond_5
    :goto_0
    nop

    .line 1226
    :goto_1
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1227
    .local v11, "appName":Landroid/widget/TextView;
    if-eqz v3, :cond_6

    .line 1228
    iget-object v12, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    :cond_6
    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1231
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1232
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1233
    const-string v7, "#3C4550"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1234
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1236
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v7, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1239
    .local v2, "appNameLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v7

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1240
    const/16 v5, 0x14

    const/4 v7, 0x0

    const/4 v9, 0x6

    invoke-virtual {v2, v9, v5, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1241
    invoke-virtual {v6, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    iput-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appName:Landroid/widget/TextView;

    .line 1244
    iput-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->parent:Landroid/view/View;

    .line 1246
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    .end local v2    # "appNameLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "imageViewSize":I
    .end local v6    # "appContainer":Landroid/widget/LinearLayout;
    .end local v10    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "appName":Landroid/widget/TextView;
    goto :goto_2

    .line 1262
    .end local v8    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;

    .line 1263
    move-object v1, v4

    if-eqz v4, :cond_d

    .line 1264
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appName:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 1265
    if-eqz v3, :cond_9

    iget-boolean v4, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->fillingMark:Z

    if-eqz v4, :cond_9

    .line 1266
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 1268
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1270
    :cond_8
    return-object p2

    .line 1272
    :cond_9
    if-eqz v3, :cond_a

    .line 1273
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    :cond_a
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    .line 1276
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1278
    :cond_b
    if-eqz v3, :cond_c

    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    .line 1279
    iget-object v2, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->iconUrl:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;

    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/widget/ImageView;)V

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 1281
    :cond_c
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->parent:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 1282
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;->parent:Landroid/view/View;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter$2;

    invoke-direct {v4, p0, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1299
    :cond_d
    move-object/from16 v8, p2

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v8    # "convertView":Landroid/view/View;
    :goto_2
    return-object v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1174
    const/4 v0, 0x2

    return v0
.end method
