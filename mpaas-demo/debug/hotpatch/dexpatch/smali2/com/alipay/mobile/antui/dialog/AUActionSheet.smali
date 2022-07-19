.class public Lcom/alipay/mobile/antui/dialog/AUActionSheet;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUActionSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUActionSheet$a;,
        Lcom/alipay/mobile/antui/dialog/AUActionSheet$b;
    }
.end annotation


# static fields
.field public static final NEGATIVE_STYLE_DEFAULT:I = 0x10

.field public static final NEGATIVE_STYLE_NONE:I = 0x11

.field public static final TEXT_WARNING_TYPE:Ljava/lang/String; = "warning_text"


# instance fields
.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

.field private mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mNegativeDivider:Landroid/view/View;

.field private mNegativeView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private normalTitleColor:I

.field private rootView:Landroid/view/View;

.field private sheetAdapter:Lcom/alipay/mobile/antui/dialog/AUActionSheet$b;

.field private warningTitleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/util/List;
    .param p5, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p6, "negativeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 87
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 88
    const/16 v0, 0x11

    if-ne p6, v0, :cond_0

    .line 89
    const/4 v8, 0x0

    const-string v7, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 91
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$string;->cancel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/antui/dialog/AUActionSheet$1;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/util/List;
    .param p5, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p6, "negativeString"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 114
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 115
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 61
    const-string v2, ""

    const-string v3, ""

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p4, "negativeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 73
    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    .line 33
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->warningTitleColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUActionSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUActionSheet;

    .line 33
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->normalTitleColor:I

    return v0
.end method

.method private initTitleView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->view_action_sheet_head:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "headView":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->action_head_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 240
    sget v1, Lcom/alipay/mobile/antui/R$id;->action_head_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mListView:Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 242
    return-void
.end method

.method private initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/util/List;
    .param p5, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p6, "negativeString"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_action_sheet_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->rootView:Landroid/view/View;

    .line 122
    sget v1, Lcom/alipay/mobile/antui/R$id;->action_sheet_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mListView:Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->initTitleView(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mTitleView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mMessageView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_1
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUActionSheet$b;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p4}, Lcom/alipay/mobile/antui/dialog/AUActionSheet$b;-><init>(Lcom/alipay/mobile/antui/dialog/AUActionSheet;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->sheetAdapter:Lcom/alipay/mobile/antui/dialog/AUActionSheet$b;

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mListView:Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mListView:Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->rootView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->action_sheet_cancel_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mNegativeView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->rootView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->action_sheet_cancel_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mNegativeDivider:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mNegativeView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p6}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    if-eqz p7, :cond_2

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mNegativeView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p7}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mNegativeDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_3
    iput-object p5, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->warningTitleColor:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->normalTitleColor:I

    .line 151
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 156
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->setContentView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->mListView:Lcom/alipay/mobile/antui/basic/AUMaxItemListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 180
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 163
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$style;->BottomDialog_Animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 165
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 169
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v3

    aget v1, v3, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUActionSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 173
    return-void
.end method
