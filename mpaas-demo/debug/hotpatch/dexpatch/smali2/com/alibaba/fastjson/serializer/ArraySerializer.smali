.class final Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
    .locals 0
    .param p2, "compObjectSerializer"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")V"
        }
    .end annotation

    .line 29
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 32
    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 11
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 38
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const-string v1, "[]"

    if-nez p2, :cond_1

    .line 39
    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 44
    :goto_0
    return-void

    .line 48
    :cond_1
    instance-of v2, p2, [Z

    const/16 v3, 0x2c

    const/16 v4, 0x5d

    const/16 v5, 0x5b

    if-eqz v2, :cond_4

    .line 49
    move-object v1, p2

    check-cast v1, [Z

    check-cast v1, [Z

    .line 50
    .local v1, "array":[Z
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 51
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 52
    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 55
    :cond_2
    aget-boolean v5, v1, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 58
    return-void

    .line 61
    .end local v1    # "array":[Z
    :cond_4
    instance-of v2, p2, [B

    if-eqz v2, :cond_5

    .line 62
    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    .line 63
    .local v1, "array":[B
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    .line 64
    return-void

    .line 67
    .end local v1    # "array":[B
    :cond_5
    instance-of v2, p2, [C

    if-eqz v2, :cond_6

    .line 68
    move-object v1, p2

    check-cast v1, [C

    check-cast v1, [C

    .line 69
    .local v1, "chars":[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 70
    return-void

    .line 73
    .end local v1    # "chars":[C
    :cond_6
    instance-of v2, p2, [D

    const/4 v6, -0x1

    if-eqz v2, :cond_b

    .line 74
    move-object v2, p2

    check-cast v2, [D

    check-cast v2, [D

    .line 75
    .local v2, "array":[D
    array-length v7, v2

    .line 77
    .local v7, "size":I
    add-int/lit8 v8, v7, -0x1

    .line 79
    .local v8, "end":I
    if-ne v8, v6, :cond_7

    .line 80
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 81
    return-void

    .line 84
    :cond_7
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v8, :cond_9

    .line 86
    aget-wide v5, v2, v1

    .line 88
    .local v5, "item":D
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_3

    .line 91
    :cond_8
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    :goto_3
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 85
    .end local v5    # "item":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    .end local v1    # "i":I
    :cond_9
    aget-wide v5, v2, v8

    .line 99
    .restart local v5    # "item":D
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 100
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_4

    .line 102
    :cond_a
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 105
    :goto_4
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 106
    return-void

    .line 109
    .end local v2    # "array":[D
    .end local v5    # "item":D
    .end local v7    # "size":I
    .end local v8    # "end":I
    :cond_b
    instance-of v2, p2, [F

    if-eqz v2, :cond_10

    .line 110
    move-object v2, p2

    check-cast v2, [F

    check-cast v2, [F

    .line 111
    .local v2, "array":[F
    array-length v7, v2

    .line 113
    .restart local v7    # "size":I
    add-int/lit8 v8, v7, -0x1

    .line 115
    .restart local v8    # "end":I
    if-ne v8, v6, :cond_c

    .line 116
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 117
    return-void

    .line 120
    :cond_c
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 121
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v8, :cond_e

    .line 122
    aget v5, v2, v1

    .line 124
    .local v5, "item":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 125
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_6

    .line 127
    :cond_d
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 130
    :goto_6
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 121
    .end local v5    # "item":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 133
    .end local v1    # "i":I
    :cond_e
    aget v1, v2, v8

    .line 135
    .local v1, "item":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_7

    .line 138
    :cond_f
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 141
    :goto_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 142
    return-void

    .line 145
    .end local v1    # "item":F
    .end local v2    # "array":[F
    .end local v7    # "size":I
    .end local v8    # "end":I
    :cond_10
    instance-of v1, p2, [I

    if-eqz v1, :cond_13

    .line 146
    move-object v1, p2

    check-cast v1, [I

    check-cast v1, [I

    .line 148
    .local v1, "array":[I
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v5, v1

    if-ge v2, v5, :cond_12

    .line 150
    if-eqz v2, :cond_11

    .line 151
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 153
    :cond_11
    aget v5, v1, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 155
    .end local v2    # "i":I
    :cond_12
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 156
    return-void

    .line 159
    .end local v1    # "array":[I
    :cond_13
    instance-of v1, p2, [J

    if-eqz v1, :cond_16

    .line 160
    move-object v1, p2

    check-cast v1, [J

    check-cast v1, [J

    .line 162
    .local v1, "array":[J
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 163
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    array-length v5, v1

    if-ge v2, v5, :cond_15

    .line 164
    if-eqz v2, :cond_14

    .line 165
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 167
    :cond_14
    aget-wide v5, v1, v2

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 169
    .end local v2    # "i":I
    :cond_15
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 170
    return-void

    .line 173
    .end local v1    # "array":[J
    :cond_16
    instance-of v1, p2, [S

    if-eqz v1, :cond_19

    .line 174
    move-object v1, p2

    check-cast v1, [S

    check-cast v1, [S

    .line 175
    .local v1, "array":[S
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 176
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    array-length v5, v1

    if-ge v2, v5, :cond_18

    .line 177
    if-eqz v2, :cond_17

    .line 178
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 180
    :cond_17
    aget-short v5, v1, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 182
    .end local v2    # "i":I
    :cond_18
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 183
    return-void

    .line 186
    .end local v1    # "array":[S
    :cond_19
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 187
    .local v1, "array":[Ljava/lang/Object;
    array-length v2, v1

    .line 189
    .local v2, "size":I
    iget-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 190
    .local v6, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, p3, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 193
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 194
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    if-ge v5, v2, :cond_1e

    .line 195
    if-eqz v5, :cond_1a

    .line 196
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 198
    :cond_1a
    aget-object v7, v1, v5

    .line 200
    .local v7, "item":Ljava/lang/Object;
    if-nez v7, :cond_1c

    .line 201
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_1b

    instance-of v8, p2, [Ljava/lang/String;

    if-eqz v8, :cond_1b

    .line 202
    const-string v8, ""

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_c

    .line 204
    :cond_1b
    const-string/jumbo v8, "null"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_c

    .line 206
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    const/4 v10, 0x0

    if-ne v8, v9, :cond_1d

    .line 207
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v7, v9, v10}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    .line 209
    :cond_1d
    iget-object v8, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v8

    .line 210
    .local v8, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v7, v9, v10}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 194
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 213
    .end local v5    # "i":I
    :cond_1e
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iput-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v3

    iput-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 216
    throw v3
.end method
