.class public Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
.super Ljava/lang/Object;
.source "RemoteCallArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private argTypes:[Ljava/lang/String;

.field private args:[Ljava/lang/Object;

.field private className:Ljava/lang/String;

.field private data:Landroid/os/Parcelable;

.field private extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private nodeId:J

.field private pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->pid:I

    .line 42
    iput-wide p1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->nodeId:J

    .line 43
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->className:Ljava/lang/String;

    .line 45
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->method:Ljava/lang/String;

    .line 46
    const-class p1, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;

    invoke-virtual {p4, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;

    .line 47
    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->action:Ljava/lang/String;

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->action:Ljava/lang/String;

    .line 54
    :cond_1
    iput-object p5, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    .line 55
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    .line 57
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    .line 58
    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_2

    .line 59
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    aget-object p4, p1, p2

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    .line 58
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->pid:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->nodeId:J

    .line 68
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->className:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->method:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->action:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 78
    aget-object v2, v2, v0

    .line 79
    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    aput-object v3, v2, v0

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->data:Landroid/os/Parcelable;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 87
    :cond_2
    if-eqz v1, :cond_3

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    .line 89
    const-class v1, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_3
    nop

    .line 95
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    const-string v0, "NebulaXKernel"

    const-string v1, "Deserialize RemoteCallArgs error!"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    throw p1
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/reflect/Method;[Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 6

    .line 35
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getNodeId()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;-><init>(JLjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 37
    iput-object p5, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->data:Landroid/os/Parcelable;

    .line 38
    return-void
.end method


# virtual methods
.method public addExtraData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getArgTypes()[Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Landroid/os/Parcelable;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->data:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 138
    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getNodeId()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->nodeId:J

    return-wide v0
.end method

.method public getPid()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->pid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteCallArgs{pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", argTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    .line 195
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 99
    iget p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->nodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->node:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->method:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->action:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    array-length p2, p2

    .line 107
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    if-lez p2, :cond_1

    .line 109
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->argTypes:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->args:[Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 113
    :cond_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->data:Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 115
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->extraData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 118
    :cond_2
    return-void
.end method
