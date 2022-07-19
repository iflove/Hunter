.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;
.super Landroid/widget/ListView;
.source "H5BugMeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

.field private c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "console"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    .param p3, "index"    # I

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 26
    iput p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->d:I

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;

    .line 28
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    .line 15
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->d:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
