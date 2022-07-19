.class public Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "PdfViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$a;,
        Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->b:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->b:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->dismiss()V

    .line 72
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 153
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_1

    aget-object v3, v0, v1

    .line 156
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const/16 v3, 0x65

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->requestPermissions([Ljava/lang/String;I)V

    .line 155
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    :try_start_0
    new-instance p1, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->b:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->show()V

    .line 37
    sget p1, Lcom/alipay/mobile/aompfilemanager/b$b;->activity_page_list:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->b()V

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->a:Ljava/lang/String;

    .line 42
    sget p1, Lcom/alipay/mobile/aompfilemanager/b$a;->list:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setEnableScale(Z)V

    .line 44
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 50
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$b;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer$a;-><init>(Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 55
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception p1

    .line 57
    const-string v0, "PdfViewer"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->a()V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/pdf/c;->a()Lcom/alipay/mobile/aompfilemanager/pdf/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/PdfViewer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b(Ljava/lang/String;)V

    .line 66
    return-void
.end method
