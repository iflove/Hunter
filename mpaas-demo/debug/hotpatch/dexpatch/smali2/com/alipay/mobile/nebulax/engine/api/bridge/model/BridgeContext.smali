.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;
.super Ljava/lang/Object;
.source "BridgeContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseInfoQuery:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

.field private dispatcherOnWorkerThread:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private node:Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

.field private params:Lcom/alibaba/fastjson/JSONObject;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->id:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->source:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->dispatcherOnWorkerThread:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 78
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->params:Lcom/alibaba/fastjson/JSONObject;

    .line 79
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 62
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->name:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params:Lcom/alibaba/fastjson/JSONObject;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->params:Lcom/alibaba/fastjson/JSONObject;

    .line 64
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 65
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;

    iget-object v1, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;-><init>(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->baseInfoQuery:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    .line 66
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->id:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->source:Ljava/lang/String;

    .line 68
    iget-boolean p1, p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->dispatcherOnWorkerThread:Z

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->dispatcherOnWorkerThread:Z

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseInfoQuery()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->baseInfoQuery:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getParams()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->params:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->source:Ljava/lang/String;

    return-object v0
.end method

.method public isDispatcherOnWorkerThread()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->dispatcherOnWorkerThread:Z

    return v0
.end method

.method public setDispatcherOnWorkerThread(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->dispatcherOnWorkerThread:Z

    .line 158
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->id:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->name:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 129
    return-void
.end method

.method public setParams(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->params:Lcom/alibaba/fastjson/JSONObject;

    .line 121
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->source:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-boolean p2, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->dispatcherOnWorkerThread:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->params:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 88
    return-void
.end method
