.class final Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;
.super Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;
.source "AUFloatMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUFloatMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter<",
        "Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUFloatMenu;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUFloatMenu;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;->a:Lcom/alipay/mobile/antui/dialog/AUFloatMenu;

    .line 64
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;->a:Lcom/alipay/mobile/antui/dialog/AUFloatMenu;

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;-><init>(Lcom/alipay/mobile/antui/dialog/AUFloatMenu;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic createView(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;->a(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;

    move-result-object p1

    return-object p1
.end method
