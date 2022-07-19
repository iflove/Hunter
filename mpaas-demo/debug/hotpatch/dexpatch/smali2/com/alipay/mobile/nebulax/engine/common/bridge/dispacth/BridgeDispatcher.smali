.class public Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;
.super Ljava/lang/Object;
.source "BridgeDispatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NebulaXEngine.BridgeDispatcher"

.field private static a:Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;


# instance fields
.field private b:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;
    .locals 1

    .line 38
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->a:Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->a:Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->a:Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;

    return-object v0
.end method


# virtual methods
.method public bindExtensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->b:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    .line 46
    return-void
.end method

.method public dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)Z

    move-result p1

    return p1
.end method

.method public dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Z)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->b:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/nebulax/engine/common/bridge/dispacth/BridgeDispatcher;->dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;ZLcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Z

    move-result p1

    return p1
.end method

.method public dispatch(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;ZLcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Z
    .locals 15

    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v7, "NebulaXEngine.BridgeDispatcher"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 58
    return v8

    .line 61
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    move-result-object v9

    .line 62
    if-nez v9, :cond_1

    .line 63
    return v8

    .line 66
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    move-result-object v10

    .line 67
    if-nez v10, :cond_2

    .line 68
    return v8

    .line 71
    :cond_2
    new-instance v3, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;

    invoke-direct {v3, v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/internal/DefaultAccessControlManagement;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)V

    .line 73
    new-instance v11, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;

    invoke-direct {v11}, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;-><init>()V

    .line 74
    invoke-interface {v11, v3}, Lcom/alipay/mobile/nebulax/kernel/security/AccessController;->setAccessControlManagement(Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;)V

    .line 76
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->getRemoteController()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    move-result-object v5

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;->getInnerBridgeResponse()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;

    move-result-object v3

    .line 79
    nop

    .line 81
    if-eqz p3, :cond_3

    .line 82
    new-instance v12, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;

    new-instance v13, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;

    new-instance v14, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;

    const-class v2, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;

    new-instance v6, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v4

    invoke-direct {v6, v4, v0, v1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    move-object v1, v14

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;-><init>(Ljava/lang/Class;Ljava/lang/Object;Landroid/os/Parcelable;Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    invoke-direct {v13, v14}, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    invoke-direct {v12, v11, v13}, Lcom/alipay/mobile/nebulax/kernel/invoke/SecurityExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/AccessController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    goto :goto_0

    .line 88
    :cond_3
    new-instance v12, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;

    new-instance v11, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;

    const-class v2, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;

    new-instance v6, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v4

    invoke-direct {v6, v4, v0, v1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/extension/BindBridgeExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeResponseHelper;)V

    move-object v1, v11

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;-><init>(Ljava/lang/Class;Ljava/lang/Object;Landroid/os/Parcelable;Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    invoke-direct {v12, v11}, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 93
    :goto_0
    invoke-virtual {v12, v10}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->attacheTargetExtensions(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V

    .line 96
    :try_start_0
    iget-object v1, v9, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->actionMethod:Ljava/lang/reflect/Method;

    .line 97
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v12, v3, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new bridge dispatch success, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const/4 v0, 0x1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    const-string v1, "bridge extension fail:"

    invoke-static {v7, v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return v8
.end method
