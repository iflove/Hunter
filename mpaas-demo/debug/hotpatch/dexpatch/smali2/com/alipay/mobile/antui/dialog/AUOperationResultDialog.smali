.class public Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUOperationResultDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;,
        Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;
    }
.end annotation


# instance fields
.field private divierView:Landroid/view/View;

.field private iconView:Landroid/widget/ImageView;

.field private final inflater:Landroid/view/LayoutInflater;

.field private listAdapter:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private rootView:Landroid/view/View;

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->title:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->title:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->inflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->list_dialog_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mMaxHeight:I

    .line 62
    if-nez p3, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "itemName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/alipay/mobile/antui/dialog/PopMenuItem;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/antui/dialog/PopMenuItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v1    # "itemName":Ljava/lang/String;
    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->inflateLayout()V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getHeigtStyle()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 122
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mMaxHeight:I

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 124
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mMaxHeight:I

    return v0

    .line 126
    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    nop

    .line 132
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 133
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private inflateLayout()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_operation_result_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->rootView:Landroid/view/View;

    .line 80
    sget v1, Lcom/alipay/mobile/antui/R$id;->operation_listView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listView:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->operation_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->titleView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->operation_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->iconView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/antui/R$id;->operation_title_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->divierView:Landroid/view/View;

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->init()V

    .line 85
    return-void
.end method

.method private init()V
    .locals 3

    .line 88
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;-><init>(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listener:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p3}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;->onItemClick(I)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->dismiss()V

    .line 187
    return-void
.end method

.method public setDivierViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->divierView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listener:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$OnItemClickListener;

    .line 76
    return-void
.end method

.method public show()V
    .locals 3

    .line 100
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 103
    .local v0, "width":I
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->getHeigtStyle()I

    move-result v1

    .line 104
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 105
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/dialog/PopMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->mItemList:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog;->listAdapter:Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUOperationResultDialog$a;->notifyDataSetChanged()V

    .line 118
    :cond_0
    return-void
.end method
