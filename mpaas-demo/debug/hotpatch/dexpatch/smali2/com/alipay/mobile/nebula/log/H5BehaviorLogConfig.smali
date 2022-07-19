.class public Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
.super Ljava/lang/Object;
.source "H5BehaviorLogConfig.java"


# static fields
.field public static final DEDIUM_LOG_LEVEL:I = 0x2

.field public static final H5SECURITY_BEHAVIOUR:Ljava/lang/String; = "H5SECURITY"

.field public static final HIGH_LOG_LEVEL:I = 0x1

.field public static final LOW_LOG_LEVEL:I = 0x3

.field public static final NEBULA_TCEH_BEHAVIOUR:Ljava/lang/String; = "NebulaTech"

.field public static final WEBSTAT_BEHAVIOUR:Ljava/lang/String; = "WEBSTAT"


# instance fields
.field private abTestInfo:Ljava/lang/String;

.field private actionId:Ljava/lang/String;

.field private behaviourPro:Ljava/lang/String;

.field private entityContentId:Ljava/lang/String;

.field private logLevel:I

.field private pageId:Ljava/lang/String;

.field private userCaseId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 1

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;-><init>()V

    .line 26
    return-object v0
.end method


# virtual methods
.method public getAbTestInfo()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->abTestInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getActionId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourPro()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->behaviourPro:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityContentId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->entityContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->logLevel:I

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCaseId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->userCaseId:Ljava/lang/String;

    return-object v0
.end method

.method public setAbTestInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "abTestInfo"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->abTestInfo:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setActionId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "actionId"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->actionId:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "behaviourPro"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->behaviourPro:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public setEntityContentId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "entityContentId"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->entityContentId:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public setLogLevel(I)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "logLevel"    # I

    .line 37
    iput p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->logLevel:I

    .line 38
    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->pageId:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setUserCaseId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "userCaseId"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->userCaseId:Ljava/lang/String;

    .line 43
    return-object p0
.end method
