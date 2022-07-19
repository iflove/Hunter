.class public Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
.super Ljava/lang/Object;
.source "MessagePopItem.java"


# instance fields
.field public content:Ljava/lang/String;

.field public extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/antui/iconfont/model/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public externParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

.field public optionBtn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "drawable"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;
    .param p2, "title"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "drawable"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->content:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "drawable"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "optionBtn"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/iconfont/model/IconInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 39
    iput-object p2, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->content:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->optionBtn:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    .line 24
    return-void
.end method
