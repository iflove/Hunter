.class final Lcom/squareup/wire/MessageAdapter;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/MessageAdapter$ImmutableList;,
        Lcom/squareup/wire/MessageAdapter$Storage;,
        Lcom/squareup/wire/MessageAdapter$FieldInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FULL_BLOCK:Ljava/lang/String; = "\u2588"

.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final fieldInfoMap:Lcom/squareup/wire/TagMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/TagMap<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wire:Lcom/squareup/wire/Wire;


# direct methods
.method constructor <init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V
    .locals 25
    .param p1, "wire"    # Lcom/squareup/wire/Wire;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Wire;",
            "Ljava/lang/Class<",
            "TM;>;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    .line 127
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    .line 128
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    .line 131
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/squareup/wire/MessageAdapter$FieldInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v15, v4, v6

    .line 134
    .local v15, "messageField":Ljava/lang/reflect/Field;
    const-class v7, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v15, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/squareup/wire/ProtoField;

    .line 135
    .local v17, "annotation":Lcom/squareup/wire/ProtoField;
    if-eqz v17, :cond_2

    .line 136
    invoke-interface/range {v17 .. v17}, Lcom/squareup/wire/ProtoField;->tag()I

    move-result v18

    .line 138
    .local v18, "tag":I
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, "name":Ljava/lang/String;
    iget-object v7, v0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v17 .. v17}, Lcom/squareup/wire/ProtoField;->type()Lcom/squareup/wire/Message$Datatype;

    move-result-object v13

    .line 142
    .local v13, "datatype":Lcom/squareup/wire/Message$Datatype;
    sget-object v8, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v13, v8, :cond_0

    .line 143
    invoke-direct {v0, v15}, Lcom/squareup/wire/MessageAdapter;->getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_1

    .line 144
    :cond_0
    sget-object v8, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v13, v8, :cond_1

    .line 145
    invoke-direct {v0, v15}, Lcom/squareup/wire/MessageAdapter;->getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_1

    .line 144
    :cond_1
    move-object/from16 v19, v7

    .line 147
    .end local v7    # "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v19, "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v11, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-interface/range {v17 .. v17}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v16

    invoke-interface/range {v17 .. v17}, Lcom/squareup/wire/ProtoField;->redacted()Z

    move-result v20

    .line 148
    invoke-direct {v0, v14}, Lcom/squareup/wire/MessageAdapter;->getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    const/16 v22, 0x0

    move-object v7, v11

    move/from16 v8, v18

    move-object v9, v14

    move-object v10, v13

    move-object v1, v11

    move-object/from16 v11, v16

    move-object v2, v12

    move/from16 v12, v20

    move-object/from16 v20, v13

    .end local v13    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .local v20, "datatype":Lcom/squareup/wire/Message$Datatype;
    move-object/from16 v13, v19

    move-object/from16 v23, v14

    .end local v14    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    move-object v14, v15

    move-object/from16 v24, v15

    .end local v15    # "messageField":Ljava/lang/reflect/Field;
    .local v24, "messageField":Ljava/lang/reflect/Field;
    move-object/from16 v15, v21

    move-object/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Lcom/squareup/wire/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lcom/squareup/wire/MessageAdapter$1;)V

    .line 147
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 135
    .end local v18    # "tag":I
    .end local v19    # "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "messageField":Ljava/lang/reflect/Field;
    .restart local v15    # "messageField":Ljava/lang/reflect/Field;
    :cond_2
    move-object/from16 v24, v15

    .line 132
    .end local v15    # "messageField":Ljava/lang/reflect/Field;
    .end local v17    # "annotation":Lcom/squareup/wire/ProtoField;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {v3}, Lcom/squareup/wire/TagMap;->of(Ljava/util/Map;)Lcom/squareup/wire/TagMap;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    .line 153
    return-void
.end method

.method private getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No builder field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    .line 171
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Ljava/lang/Class<",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;>;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No builder class found for message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEnumAdapter(I)Lcom/squareup/wire/EnumAdapter;
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/EnumAdapter<",
            "+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 662
    .local v0, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    return-object v1

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getEnumClass(I)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v1

    .line 666
    .local v1, "result":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<+Lcom/squareup/wire/ProtoEnum;>;"
    if-eqz v0, :cond_1

    .line 667
    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    .line 669
    :cond_1
    return-object v1
.end method

.method private getEnumClass(I)Ljava/lang/Class;
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .line 758
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 759
    .local v0, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    .line 760
    .local v1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/wire/ProtoEnum;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 761
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v2

    .line 762
    .local v2, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    if-eqz v2, :cond_1

    .line 763
    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getEnumType()Ljava/lang/Class;

    move-result-object v1

    .line 766
    .end local v2    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    :cond_1
    return-object v1
.end method

.method private getEnumSize(Lcom/squareup/wire/ProtoEnum;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Lcom/squareup/wire/ProtoEnum;, "TE;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 456
    .local v0, "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<TE;>;"
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    return v1
.end method

.method private getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 193
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    return-object v0

    .line 195
    :cond_0
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 198
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v2, Ljava/lang/Enum;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 202
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExtension(I)Lcom/squareup/wire/Extension;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension<",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;*>;"
        }
    .end annotation

    .line 739
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v0, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    .line 740
    .local v0, "registry":Lcom/squareup/wire/ExtensionRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    .line 741
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;I)Lcom/squareup/wire/Extension;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Lcom/squareup/wire/ExtensionMap<",
            "TT;>;)I"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "map":Lcom/squareup/wire/ExtensionMap;, "Lcom/squareup/wire/ExtensionMap<TT;>;"
    const/4 v0, 0x0

    .line 246
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ExtensionMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 247
    invoke-virtual {p1, v1}, Lcom/squareup/wire/ExtensionMap;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v2

    .line 248
    .local v2, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    invoke-virtual {p1, v1}, Lcom/squareup/wire/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v3

    .line 249
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v4

    .line 250
    .local v4, "tag":I
    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    .line 251
    .local v5, "datatype":Lcom/squareup/wire/Message$Datatype;
    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v6

    .line 252
    .local v6, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v6}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 253
    invoke-virtual {v6}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1

    .line 256
    :cond_0
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1

    .line 259
    :cond_1
    invoke-direct {p0, v4, v3, v5}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v0, v7

    .line 246
    .end local v2    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "tag":I
    .end local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v6    # "label":Lcom/squareup/wire/Message$Label;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private getMessageAdapter(I)Lcom/squareup/wire/MessageAdapter;
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/MessageAdapter<",
            "+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .line 649
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 650
    .local v0, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    return-object v1

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getMessageClass(I)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v1

    .line 654
    .local v1, "result":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<+Lcom/squareup/wire/Message;>;"
    if-eqz v0, :cond_1

    .line 655
    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    .line 657
    :cond_1
    return-object v1
.end method

.method private getMessageClass(I)Ljava/lang/Class;
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 675
    .local v0, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    .line 677
    .local v1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/squareup/wire/Message;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 678
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v2

    .line 679
    .local v2, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    if-eqz v2, :cond_1

    .line 680
    invoke-virtual {v2}, Lcom/squareup/wire/Extension;->getMessageType()Ljava/lang/Class;

    move-result-object v1

    .line 683
    .end local v2    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    :cond_1
    return-object v1
.end method

.method private getMessageSize(Lcom/squareup/wire/Message;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;)I"
        }
    .end annotation

    .line 461
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    .line 462
    .local v0, "messageSize":I
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 178
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/squareup/wire/Message;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    return-object v0

    .line 180
    :cond_0
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 183
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v2, Lcom/squareup/wire/Message;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 187
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 4
    .param p2, "tag"    # I
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 275
    .local v0, "packedLength":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 276
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v0, v3

    .line 277
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 279
    :cond_0
    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p2, v1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    .line 280
    .local v1, "size":I
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 281
    add-int/2addr v1, v0

    .line 282
    return v1
.end method

.method private getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 4
    .param p2, "tag"    # I
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 267
    .local v0, "size":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v0, v3

    .line 269
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 270
    :cond_0
    return v0
.end method

.method private getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;

    .line 404
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "datatype"    # Lcom/squareup/wire/Message$Datatype;

    .line 412
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p2}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 430
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 428
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 426
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/Message;

    invoke-direct {p0, v0}, Lcom/squareup/wire/MessageAdapter;->getMessageSize(Lcom/squareup/wire/Message;)I

    move-result v0

    return v0

    .line 424
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 425
    .local v0, "length":I
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 421
    .end local v0    # "length":I
    :pswitch_4
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/squareup/wire/MessageAdapter;->utf8Length(Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, "utf8Length":I
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 419
    .end local v0    # "utf8Length":I
    :pswitch_5
    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/ProtoEnum;

    invoke-direct {p0, v0}, Lcom/squareup/wire/MessageAdapter;->getEnumSize(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    return v0

    .line 418
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 417
    :pswitch_7
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    return v0

    .line 416
    :pswitch_8
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    return v0

    .line 415
    :pswitch_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    return v0

    .line 414
    :pswitch_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    return v0

    .line 413
    :pswitch_b
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;
    .locals 5
    .param p1, "input"    # Lcom/squareup/wire/WireInput;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 635
    .local v0, "length":I
    iget v1, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 638
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v1

    .line 639
    .local v1, "oldLimit":I
    iget v2, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    .line 640
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getMessageAdapter(I)Lcom/squareup/wire/MessageAdapter;

    move-result-object v2

    .line 641
    .local v2, "adapter":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<+Lcom/squareup/wire/Message;>;"
    invoke-virtual {v2, p1}, Lcom/squareup/wire/MessageAdapter;->read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;

    move-result-object v3

    .line 642
    .local v3, "message":Lcom/squareup/wire/Message;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    .line 643
    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    .line 644
    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    .line 645
    return-object v3

    .line 636
    .end local v1    # "oldLimit":I
    .end local v2    # "adapter":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<+Lcom/squareup/wire/Message;>;"
    .end local v3    # "message":Lcom/squareup/wire/Message;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Wire recursion limit exceeded"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readUnknownField(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V
    .locals 3
    .param p1, "builder"    # Lcom/squareup/wire/Message;
    .param p2, "input"    # Lcom/squareup/wire/WireInput;
    .param p3, "tag"    # I
    .param p4, "type"    # Lcom/squareup/wire/WireType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-virtual {p4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 708
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :pswitch_0
    goto :goto_0

    .line 704
    :pswitch_1
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->skipGroup()V

    .line 705
    goto :goto_0

    .line 699
    :pswitch_2
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 700
    .local v0, "length":I
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/squareup/wire/UnknownFieldMap;->addLengthDelimited(ILokio/ByteString;)V

    .line 701
    goto :goto_0

    .line 696
    .end local v0    # "length":I
    :pswitch_3
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/squareup/wire/UnknownFieldMap;->addFixed64(ILjava/lang/Long;)V

    .line 697
    goto :goto_0

    .line 693
    :pswitch_4
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/squareup/wire/UnknownFieldMap;->addFixed32(ILjava/lang/Integer;)V

    .line 694
    goto :goto_0

    .line 690
    :pswitch_5
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/squareup/wire/UnknownFieldMap;->addVarint(ILjava/lang/Long;)V

    .line 691
    nop

    .line 710
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;
    .locals 4
    .param p1, "input"    # Lcom/squareup/wire/WireInput;
    .param p2, "tag"    # I
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 628
    :pswitch_0
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 626
    :pswitch_1
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 627
    :pswitch_2
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 625
    :pswitch_3
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 624
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0

    .line 623
    :pswitch_5
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readBytes()Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 622
    :pswitch_6
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getEnumAdapter(I)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 615
    .local v0, "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<+Lcom/squareup/wire/ProtoEnum;>;"
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    .line 617
    .local v1, "value":I
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/squareup/wire/EnumAdapter;->fromInt(I)Lcom/squareup/wire/ProtoEnum;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 618
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 612
    .end local v0    # "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<+Lcom/squareup/wire/ProtoEnum;>;"
    .end local v1    # "value":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_8
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 611
    :pswitch_9
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireInput;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 610
    :pswitch_a
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireInput;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 609
    :pswitch_b
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 608
    :pswitch_c
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setExtension(Lcom/squareup/wire/ExtendableMessage;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Lcom/squareup/wire/ExtendableMessage;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage;",
            "Lcom/squareup/wire/Extension<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 754
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual {p1, p2, p3}, Lcom/squareup/wire/ExtendableMessage;->setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage;

    .line 755
    return-void
.end method

.method private utf8Length(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 436
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    const/4 v0, 0x0

    .line 437
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 439
    .local v3, "ch":C
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    .line 442
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 443
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    add-int/lit8 v0, v0, 0x4

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 437
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3
    return v0
.end method

.method private writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V
    .locals 2
    .param p2, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .line 513
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Lcom/squareup/wire/ProtoEnum;, "TE;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 514
    .local v0, "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<TE;>;"
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 515
    return-void
.end method

.method private writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V
    .locals 7
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;>(",
            "Lcom/squareup/wire/WireOutput;",
            "Lcom/squareup/wire/ExtensionMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "extensionMap":Lcom/squareup/wire/ExtensionMap;, "Lcom/squareup/wire/ExtensionMap<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/squareup/wire/ExtensionMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 319
    invoke-virtual {p2, v0}, Lcom/squareup/wire/ExtensionMap;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    .line 320
    .local v1, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    invoke-virtual {p2, v0}, Lcom/squareup/wire/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 321
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v3

    .line 322
    .local v3, "tag":I
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v4

    .line 323
    .local v4, "datatype":Lcom/squareup/wire/Message$Datatype;
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v5

    .line 324
    .local v5, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v5}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    invoke-virtual {v5}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 326
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p1, v6, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 328
    :cond_0
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p1, v6, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 331
    :cond_1
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 318
    .end local v1    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "tag":I
    .end local v4    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v5    # "label":Lcom/squareup/wire/Message$Label;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 2
    .param p2, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .line 505
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 506
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 507
    .local v0, "adapter":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    .line 508
    return-void
.end method

.method private writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 4
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p3, "tag"    # I
    .param p4, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 346
    .local v0, "packedLength":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 347
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2, p4}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v0, v3

    .line 348
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 349
    :cond_0
    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p1, p3, v1}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 350
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 351
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 352
    .restart local v2    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v2, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 353
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 354
    :cond_1
    return-void
.end method

.method private writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 2
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p3, "tag"    # I
    .param p4, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 339
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, p1, p3, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 340
    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method private writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 1
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p4}, Lcom/squareup/wire/Message$Datatype;->wireType()Lcom/squareup/wire/WireType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 468
    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 469
    return-void
.end method

.method private writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 2
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 498
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    .line 496
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    .line 497
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_0

    .line 495
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_0

    .line 494
    :pswitch_4
    move-object v0, p2

    check-cast v0, Lcom/squareup/wire/Message;

    invoke-direct {p0, v0, p1}, Lcom/squareup/wire/MessageAdapter;->writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    goto/16 :goto_0

    .line 490
    :pswitch_5
    move-object v0, p2

    check-cast v0, Lokio/ByteString;

    .line 491
    .local v0, "byteString":Lokio/ByteString;
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 492
    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    .line 493
    goto :goto_0

    .line 485
    .end local v0    # "byteString":Lokio/ByteString;
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 486
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 487
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    .line 488
    goto :goto_0

    .line 483
    .end local v0    # "bytes":[B
    :pswitch_7
    move-object v0, p2

    check-cast v0, Lcom/squareup/wire/ProtoEnum;

    invoke-direct {p0, v0, p1}, Lcom/squareup/wire/MessageAdapter;->writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V

    goto :goto_0

    .line 482
    :pswitch_8
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    goto :goto_0

    .line 481
    :pswitch_9
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    .line 480
    :pswitch_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 479
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 478
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    .line 477
    :pswitch_d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeSignedVarint32(I)V

    .line 501
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getExtension(Ljava/lang/String;)Lcom/squareup/wire/Extension;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/Extension<",
            "Lcom/squareup/wire/ExtendableMessage<",
            "*>;*>;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v0, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    .line 747
    .local v0, "registry":Lcom/squareup/wire/ExtensionRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    .line 748
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/wire/Extension;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getField(Ljava/lang/String;)Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 96
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 97
    .local v0, "key":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    :goto_0
    return-object v1
.end method

.method getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;
    .locals 2
    .param p2, "fieldInfo"    # Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    # getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    # getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Field is not of type \"Message\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0}, Lcom/squareup/wire/TagMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getSerializedSize(Lcom/squareup/wire/Message;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    const/4 v0, 0x0

    .line 214
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 215
    .local v2, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 217
    goto :goto_0

    .line 219
    :cond_0
    iget v4, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 220
    .local v4, "tag":I
    iget-object v5, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 221
    .local v5, "datatype":Lcom/squareup/wire/Message$Datatype;
    iget-object v6, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 223
    .local v6, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v6}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 224
    invoke-virtual {v6}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1

    .line 227
    :cond_1
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1

    .line 230
    :cond_2
    invoke-direct {p0, v4, v3, v5}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v0, v7

    .line 232
    .end local v2    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "tag":I
    .end local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v6    # "label":Lcom/squareup/wire/Message$Label;
    :goto_1
    goto :goto_0

    .line 234
    :cond_3
    instance-of v1, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v1, :cond_4

    .line 235
    move-object v1, p1

    check-cast v1, Lcom/squareup/wire/ExtendableMessage;

    .line 236
    .local v1, "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    iget-object v2, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v2, :cond_4

    .line 237
    iget-object v2, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, v2}, Lcom/squareup/wire/MessageAdapter;->getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I

    move-result v2

    add-int/2addr v0, v2

    .line 240
    .end local v1    # "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getUnknownFieldsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    return v0
.end method

.method read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;
    .locals 20
    .param p1, "input"    # Lcom/squareup/wire/WireInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireInput;",
            ")TM;"
        }
    .end annotation

    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 522
    :try_start_0
    iget-object v0, v1, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    .line 524
    .local v0, "message":Lcom/squareup/wire/Message;, "TM;"
    new-instance v3, Lcom/squareup/wire/MessageAdapter$Storage;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/squareup/wire/MessageAdapter$Storage;-><init>(Lcom/squareup/wire/MessageAdapter$1;)V

    .line 527
    .local v3, "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    :goto_0
    const/4 v4, 0x0

    .line 528
    .local v4, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v5

    .line 529
    .local v5, "tagAndType":I
    shr-int/lit8 v6, v5, 0x3

    .line 530
    .local v6, "tag":I
    invoke-static {v5}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v7

    .line 531
    .local v7, "wireType":Lcom/squareup/wire/WireType;
    if-nez v6, :cond_2

    .line 533
    invoke-virtual {v3}, Lcom/squareup/wire/MessageAdapter$Storage;->getTags()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 534
    .local v9, "storedTag":I
    iget-object v10, v1, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/TagMap;->containsKey(I)Z

    move-result v10

    .line 535
    .local v10, "hasField":Z
    if-eqz v10, :cond_0

    .line 536
    invoke-virtual {v3, v9}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1, v0, v9, v11}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message;ILjava/lang/Object;)V

    goto :goto_2

    .line 538
    :cond_0
    move-object v11, v0

    check-cast v11, Lcom/squareup/wire/ExtendableMessage;

    invoke-direct {v1, v9}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v12

    .line 540
    invoke-virtual {v3, v9}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v13

    .line 538
    invoke-direct {v1, v11, v12, v13}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    .line 542
    .end local v9    # "storedTag":I
    .end local v10    # "hasField":Z
    :goto_2
    goto :goto_1

    .line 543
    :cond_1
    return-object v0

    .line 549
    :cond_2
    iget-object v8, v1, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v8, v6}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 550
    .local v8, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-eqz v8, :cond_3

    .line 551
    iget-object v9, v8, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 552
    .local v9, "datatype":Lcom/squareup/wire/Message$Datatype;
    iget-object v10, v8, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .local v10, "label":Lcom/squareup/wire/Message$Label;
    goto :goto_3

    .line 554
    .end local v9    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v10    # "label":Lcom/squareup/wire/Message$Label;
    :cond_3
    invoke-direct {v1, v6}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v9

    move-object v4, v9

    .line 555
    if-nez v4, :cond_4

    .line 556
    invoke-direct {v1, v0, v2, v6, v7}, Lcom/squareup/wire/MessageAdapter;->readUnknownField(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V

    .line 557
    goto :goto_0

    .line 559
    :cond_4
    invoke-virtual {v4}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v9

    .line 560
    .restart local v9    # "datatype":Lcom/squareup/wire/Message$Datatype;
    invoke-virtual {v4}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v10

    .line 564
    .restart local v10    # "label":Lcom/squareup/wire/Message$Label;
    :goto_3
    invoke-virtual {v10}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    if-ne v7, v11, :cond_8

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v11

    .line 567
    .local v11, "length":I
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v12

    .line 568
    .local v12, "start":J
    invoke-virtual {v2, v11}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v14

    .line 569
    .local v14, "oldLimit":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v15

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v7    # "wireType":Lcom/squareup/wire/WireType;
    .end local v8    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .local v17, "wireType":Lcom/squareup/wire/WireType;
    .local v18, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    int-to-long v7, v11

    add-long/2addr v7, v12

    cmp-long v19, v15, v7

    if-gez v19, :cond_6

    .line 570
    invoke-direct {v1, v2, v6, v9}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v7

    .line 571
    .local v7, "value":Ljava/lang/Object;
    sget-object v8, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v9, v8, :cond_5

    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_5

    .line 573
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v16, v4

    move v15, v5

    .end local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v5    # "tagAndType":I
    .local v15, "tagAndType":I
    .local v16, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    int-to-long v4, v8

    invoke-virtual {v0, v6, v4, v5}, Lcom/squareup/wire/Message;->addVarint(IJ)V

    move v5, v15

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    goto :goto_4

    .line 571
    .end local v15    # "tagAndType":I
    .end local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v5    # "tagAndType":I
    :cond_5
    move-object/from16 v16, v4

    move v15, v5

    .line 575
    .end local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v5    # "tagAndType":I
    .restart local v15    # "tagAndType":I
    .restart local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual {v3, v6, v7}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    move v5, v15

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    goto :goto_4

    .line 578
    .end local v7    # "value":Ljava/lang/Object;
    .end local v15    # "tagAndType":I
    .end local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v5    # "tagAndType":I
    :cond_6
    move-object/from16 v16, v4

    move v15, v5

    .end local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v5    # "tagAndType":I
    .restart local v15    # "tagAndType":I
    .restart local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual {v2, v14}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v4

    int-to-long v7, v11

    add-long/2addr v7, v12

    cmp-long v19, v4, v7

    if-nez v19, :cond_7

    .line 582
    .end local v11    # "length":I
    .end local v12    # "start":J
    .end local v14    # "oldLimit":I
    goto :goto_5

    .line 580
    .restart local v11    # "length":I
    .restart local v12    # "start":J
    .restart local v14    # "oldLimit":I
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packed data had wrong length!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "input":Lcom/squareup/wire/WireInput;
    throw v4

    .line 564
    .end local v11    # "length":I
    .end local v12    # "start":J
    .end local v14    # "oldLimit":I
    .end local v15    # "tagAndType":I
    .end local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v17    # "wireType":Lcom/squareup/wire/WireType;
    .end local v18    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .restart local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v5    # "tagAndType":I
    .local v7, "wireType":Lcom/squareup/wire/WireType;
    .restart local v8    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .restart local p1    # "input":Lcom/squareup/wire/WireInput;
    :cond_8
    move-object/from16 v16, v4

    move v15, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 584
    .end local v4    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v5    # "tagAndType":I
    .end local v7    # "wireType":Lcom/squareup/wire/WireType;
    .end local v8    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .restart local v15    # "tagAndType":I
    .restart local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v17    # "wireType":Lcom/squareup/wire/WireType;
    .restart local v18    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-direct {v1, v2, v6, v9}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v4

    .line 585
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v9, v5, :cond_9

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 587
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v0, v6, v7, v8}, Lcom/squareup/wire/Message;->addVarint(IJ)V

    goto :goto_5

    .line 589
    :cond_9
    invoke-virtual {v10}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 590
    invoke-virtual {v3, v6, v4}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 591
    :cond_a
    if-eqz v16, :cond_b

    .line 592
    move-object v5, v0

    check-cast v5, Lcom/squareup/wire/ExtendableMessage;

    move-object/from16 v7, v16

    .end local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .local v7, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-direct {v1, v5, v7, v4}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    goto :goto_5

    .line 594
    .end local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    :cond_b
    move-object/from16 v7, v16

    .end local v16    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual {v1, v0, v6, v4}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v4    # "value":Ljava/lang/Object;
    .end local v6    # "tag":I
    .end local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v9    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v10    # "label":Lcom/squareup/wire/Message$Label;
    .end local v15    # "tagAndType":I
    .end local v17    # "wireType":Lcom/squareup/wire/WireType;
    .end local v18    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    :goto_5
    goto/16 :goto_0

    .line 601
    .end local v0    # "message":Lcom/squareup/wire/Message;, "TM;"
    .end local v3    # "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 599
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setBuilderField(Lcom/squareup/wire/Message;ILjava/lang/Object;)V
    .locals 2
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0, p2}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    # getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->builderField:Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$100(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method toByteArray(Lcom/squareup/wire/Message;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(Lcom/squareup/wire/Message;)I

    move-result v0

    new-array v0, v0, [B

    .line 362
    .local v0, "result":[B
    :try_start_0
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->newInstance([B)Lcom/squareup/wire/WireOutput;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    nop

    .line 366
    return-object v0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method toString(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, ""

    .line 378
    .local v1, "sep":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 379
    .local v3, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-virtual {p0, p1, v3}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v4

    .line 380
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 381
    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, ", "

    .line 385
    iget-object v5, v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-boolean v5, v3, Lcom/squareup/wire/MessageAdapter$FieldInfo;->redacted:Z

    if-eqz v5, :cond_1

    const-string v5, "\u2588\u2588"

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    .end local v3    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 389
    :cond_2
    instance-of v2, p1, Lcom/squareup/wire/ExtendableMessage;

    const-string v3, "}"

    if-eqz v2, :cond_3

    .line 390
    move-object v2, p1

    check-cast v2, Lcom/squareup/wire/ExtendableMessage;

    .line 391
    .local v2, "extendableMessage":Lcom/squareup/wire/ExtendableMessage;, "Lcom/squareup/wire/ExtendableMessage<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v4, "{extensions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v2}, Lcom/squareup/wire/ExtendableMessage;->extensionsToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .end local v2    # "extendableMessage":Lcom/squareup/wire/ExtendableMessage;, "Lcom/squareup/wire/ExtendableMessage<*>;"
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 7
    .param p2, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 288
    .local v1, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-virtual {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 289
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 290
    goto :goto_0

    .line 292
    :cond_0
    iget v3, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 293
    .local v3, "tag":I
    iget-object v4, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 294
    .local v4, "datatype":Lcom/squareup/wire/Message$Datatype;
    iget-object v5, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 296
    .local v5, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v5}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 297
    invoke-virtual {v5}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 298
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2, v6, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 300
    :cond_1
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2, v6, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 303
    :cond_2
    invoke-direct {p0, p2, v3, v2, v4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 305
    .end local v1    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "tag":I
    .end local v4    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v5    # "label":Lcom/squareup/wire/Message$Label;
    :goto_1
    goto :goto_0

    .line 307
    :cond_3
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_4

    .line 308
    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    .line 309
    .local v0, "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v1, :cond_4

    .line 310
    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, p2, v1}, Lcom/squareup/wire/MessageAdapter;->writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V

    .line 313
    .end local v0    # "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->writeUnknownFieldMap(Lcom/squareup/wire/WireOutput;)V

    .line 314
    return-void
.end method
