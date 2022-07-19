.class public Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpEx.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPACE_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "H5InputBoardProviderImpEx"

.field private static sUseAntUIDefaultKeyboard:Ljava/lang/Boolean;

.field private static sUseAntUIDefaultKeyboardAppId:Lcom/alibaba/fastjson/JSONArray;

.field private static sUseOldDefaultNumKeyboard:Ljava/lang/Boolean;


# instance fields
.field private ifUseRandomNumber:Z

.field private lastClickTime:J

.field private mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

.field private mActivity:Landroid/app/Activity;

.field private mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

.field private mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

.field private mKeyboardMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->KEY_CODE_MAP:Ljava/util/Map;

    .line 50
    const/4 v1, 0x0

    sput-object v1, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseOldDefaultNumKeyboard:Ljava/lang/Boolean;

    .line 51
    sput-object v1, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboard:Ljava/lang/Boolean;

    .line 187
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "."

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "X"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->ifUseRandomNumber:Z

    .line 54
    new-instance v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    invoke-direct {v0, p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)V

    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 526
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->lastClickTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    .line 38
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 38
    sget-object v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->KEY_CODE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IIII)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(IIII)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    .line 38
    iget-boolean v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->ifUseRandomNumber:Z

    return v0
.end method

.method private createKeyEvent(III)Landroid/view/KeyEvent;
    .locals 16
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "keyCode"    # I

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 360
    .local v13, "now":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v15
.end method

.method private createKeyEvent(IIII)Landroid/view/KeyEvent;
    .locals 16
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 366
    .local v13, "now":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v15
.end method

.method private getKeyboardHeight()I
    .locals 4

    .line 571
    invoke-virtual {p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->getKeyboard()Landroid/view/View;

    move-result-object v0

    .line 572
    .local v0, "keyboard":Landroid/view/View;
    const/high16 v1, 0x435c0000    # 220.0f

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 575
    .local v2, "keyboardHeight":I
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 577
    .end local v2    # "keyboardHeight":I
    :cond_1
    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method private notifyKeyboardHeight()V
    .locals 6

    .line 560
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 561
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 562
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v1, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->getKeyboardHeight()I

    move-result v2

    .line 564
    .local v2, "keyboardHeight":I
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 565
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "keyboardHeight"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v4, "keyboardBecomeVisible"

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 568
    .end local v2    # "keyboardHeight":I
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private useAntUIDefaultKeyboard(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 544
    sget-object v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    sget-object v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboardAppId:Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 548
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboardAppId:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 549
    sget-object v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboardAppId:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "appid":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    return v1

    .line 548
    .end local v2    # "appid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return v1

    .line 556
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getKeyboard()Landroid/view/View;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    return-object v0

    .line 274
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->getKeyboard()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideKeyboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5InputBoardProviderImpEx"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->onHide()Z

    .line 304
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 205
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActivity:Landroid/app/Activity;

    .line 209
    iput-object p2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mKeyboardMap:Ljava/util/HashMap;

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "isTinyApp":Z
    const/4 v1, 0x0

    .line 215
    .local v1, "isNebulaX":Z
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 216
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 217
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const/4 v3, 0x0

    .line 218
    .local v3, "appId":Ljava/lang/String;
    const-string v4, "appId"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    .line 220
    .local v6, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "isTinyApp"

    invoke-static {v7, v8, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 222
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->isNebulaX(Landroid/os/Bundle;)Z

    move-result v1

    .line 223
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .end local v6    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    sget-object v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseOldDefaultNumKeyboard:Ljava/lang/Boolean;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 228
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 229
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v6, :cond_2

    .line 230
    nop

    .line 231
    const-string v8, "h5_useOldDefaultNumKeyboard"

    invoke-interface {v6, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "yes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseOldDefaultNumKeyboard:Ljava/lang/Boolean;

    .line 232
    const-string v8, "h5_useAntUIDefaultKeyboard"

    invoke-interface {v6, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 233
    .local v8, "useAntUIDefaultKeyboard":Lcom/alibaba/fastjson/JSONObject;
    const-string v10, "enable"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboard:Ljava/lang/Boolean;

    .line 234
    invoke-static {v8, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    sput-object v4, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboardAppId:Lcom/alibaba/fastjson/JSONArray;

    .line 235
    .end local v8    # "useAntUIDefaultKeyboard":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 236
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseOldDefaultNumKeyboard:Ljava/lang/Boolean;

    .line 237
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseAntUIDefaultKeyboard:Ljava/lang/Boolean;

    .line 241
    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_3
    :goto_0
    const/4 v4, 0x1

    if-nez v0, :cond_6

    .line 242
    invoke-direct {p0, v3}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->useAntUIDefaultKeyboard(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 245
    :cond_4
    iget-object v6, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mDefaultImpl:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-virtual {p0, v7, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    goto :goto_2

    .line 243
    :cond_5
    :goto_1
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    sget-object v8, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->sUseOldDefaultNumKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {v6, p0, v4, v8}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    invoke-virtual {p0, v7, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 250
    :cond_6
    :goto_2
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7, v4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v8, "number"

    invoke-virtual {p0, v8, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 251
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    invoke-direct {v6, p0, v4, v4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v8, "digit"

    invoke-virtual {p0, v8, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 252
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    const/4 v8, 0x2

    invoke-direct {v6, p0, v8, v4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v9, "idcard"

    invoke-virtual {p0, v9, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 253
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    const/4 v9, 0x4

    invoke-direct {v6, p0, v9, v4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v10, "phone"

    invoke-virtual {p0, v10, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 255
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    invoke-direct {v6, p0, v7, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v7, "numberpad"

    invoke-virtual {p0, v7, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 256
    new-instance v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    invoke-direct {v6, p0, v4, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v4, "digitpad"

    invoke-virtual {p0, v4, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 257
    new-instance v4, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    invoke-direct {v4, p0, v8, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v6, "idcardpad"

    invoke-virtual {p0, v6, v4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 258
    new-instance v4, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    invoke-direct {v4, p0, v9, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V

    const-string v5, "phonepad"

    invoke-virtual {p0, v5, v4}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V

    .line 259
    return-void
.end method

.method public isDuplicate()Z
    .locals 7

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 532
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 534
    const/4 v2, 0x0

    .local v2, "isDuplicate":Z
    goto :goto_0

    .line 536
    .end local v2    # "isDuplicate":Z
    :cond_0
    const/4 v2, 0x1

    .line 538
    .restart local v2    # "isDuplicate":Z
    :goto_0
    iput-wide v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->lastClickTime:J

    .line 539
    return v2
.end method

.method public isKeyboardShown()Z
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKeyboardShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5InputBoardProviderImpEx"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->isKeyboardShown()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 338
    :cond_0
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease()V
    .locals 2

    .line 344
    const-string v0, "H5InputBoardProviderImpEx"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->hideKeyboard()V

    .line 347
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->onRelease()Z

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 351
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mKeyboardMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 354
    :cond_1
    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActivity:Landroid/app/Activity;

    .line 355
    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 356
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 263
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mKeyboardMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public setIfUseRandomNumber(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 295
    iput-boolean p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->ifUseRandomNumber:Z

    .line 296
    return-void
.end method

.method public setKeyboardType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mKeyboardMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 283
    .local v0, "newActiveKeyboard":Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eq v0, v1, :cond_2

    .line 284
    if-nez v0, :cond_1

    .line 285
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->resizeAndHideKeyboard()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->hideKeyboard()V

    .line 290
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    .line 291
    return-void
.end method

.method public setOperateListener(Lcom/alipay/mobile/nebula/callback/H5InputOperator;)V
    .locals 0
    .param p1, "operator"    # Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 326
    iput-object p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    .line 327
    return-void
.end method

.method public setTextChanged(Z)V
    .locals 2
    .param p1, "isEmpty"    # Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextChanged...isEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5InputBoardProviderImpEx"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->setTextChanged(Z)V

    .line 312
    :cond_0
    return-void
.end method

.method public showKeyboard()V
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showKeyboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5InputBoardProviderImpEx"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActiveKeyboard:Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;->onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z

    .line 320
    invoke-direct {p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->notifyKeyboardHeight()V

    .line 322
    :cond_0
    return-void
.end method
