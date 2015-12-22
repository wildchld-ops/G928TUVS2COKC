.class public Lmf/org/apache/xml/resolver/apps/resolver;
.super Ljava/lang/Object;
.source "resolver.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v14, v0, :cond_7

    if-nez v18, :cond_0

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    :cond_0
    const-string v26, "doctype"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    if-nez v16, :cond_1

    if-nez v23, :cond_1

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "DOCTYPE requires public or system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    const/4 v5, 0x0

    const/16 v21, 0x0

    :try_start_0
    const-string v26, "basename"

    invoke-static/range {v26 .. v26}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :goto_2
    :try_start_1
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v23

    :cond_2
    :goto_3
    new-instance v7, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-direct {v7}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>()V

    invoke-virtual {v7}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v19

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_17

    const/16 v20, 0x0

    sget v26, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve DOCTYPE (name, publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v15, :cond_3

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "       name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    if-eqz v16, :cond_4

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    if-eqz v23, :cond_5

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    if-eqz v24, :cond_6

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "        uri: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_5
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Result: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_7
    aget-object v26, p0, v14

    const-string v27, "-c"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    add-int/lit8 v14, v14, 0x1

    aget-object v26, p0, v14

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_9
    aget-object v26, p0, v14

    const-string v27, "-p"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    add-int/lit8 v14, v14, 0x1

    aget-object v16, p0, v14

    goto :goto_6

    :cond_a
    aget-object v26, p0, v14

    const-string v27, "-s"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    add-int/lit8 v14, v14, 0x1

    aget-object v23, p0, v14

    goto :goto_6

    :cond_b
    aget-object v26, p0, v14

    const-string v27, "-n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    add-int/lit8 v14, v14, 0x1

    aget-object v15, p0, v14

    goto :goto_6

    :cond_c
    aget-object v26, p0, v14

    const-string v27, "-u"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    add-int/lit8 v14, v14, 0x1

    aget-object v24, p0, v14

    goto :goto_6

    :cond_d
    aget-object v26, p0, v14

    const-string v27, "-a"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    aget-object v26, p0, v14

    const-string v27, "-d"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    add-int/lit8 v14, v14, 0x1

    aget-object v10, p0, v14

    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8

    sget-object v26, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v26

    goto :goto_6

    :cond_f
    aget-object v18, p0, v14

    goto :goto_6

    :cond_10
    const-string v26, "document"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    goto/16 :goto_1

    :cond_11
    const-string v26, "entity"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_12

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    if-nez v16, :cond_1

    if-nez v23, :cond_1

    if-nez v15, :cond_1

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "ENTITY requires name or public or system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v26, "notation"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    if-nez v16, :cond_1

    if-nez v23, :cond_1

    if-nez v15, :cond_1

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "NOTATION requires name or public or system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v26, "public"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    if-nez v16, :cond_1

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "PUBLIC requires public identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v26, "system"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    if-nez v23, :cond_1

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "SYSTEM requires system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v26, "uri"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    sget v17, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    if-nez v24, :cond_1

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "URI requires a uri."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    :cond_16
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " is not a recognized keyword."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    :catch_1
    move-exception v11

    const-string/jumbo v26, "user.dir"

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x5c

    const/16 v27, 0x2f

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/16 v27, 0x1

    const-string v28, "Malformed URL on cwd"

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v11

    :goto_7
    :try_start_4
    new-instance v21, Ljava/net/URL;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "file:///"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v12

    sget-object v26, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/16 v27, 0x1

    const-string v28, "Malformed URL on system id"

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_18
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve DOCUMENT ():"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xml/resolver/Catalog;->resolveDocument()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    :cond_19
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve ENTITY (name, publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v15, :cond_1a

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "       name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    if-eqz v16, :cond_1b

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    if-eqz v23, :cond_1c

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    :cond_1d
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve NOTATION (name, publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v15, :cond_1e

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "       name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e
    if-eqz v16, :cond_1f

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f
    if-eqz v23, :cond_20

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    :cond_21
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve PUBLIC (publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v16, :cond_22

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_22
    if-eqz v23, :cond_23

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    :cond_24
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve SYSTEM (systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v23, :cond_25

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    :cond_26
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_28

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve URI (uri):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v24, :cond_27

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "        uri: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    :cond_28
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v27, "resType is wrong!? This can\'t happen!"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_5

    :catch_4
    move-exception v11

    move-object/from16 v21, v22

    goto/16 :goto_7
.end method

.method public static usage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: resolver [options] keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Where:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-c catalogfile  Loads a particular catalog file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-n name         Sets the name."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-p publicId     Sets the public identifier."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-s systemId     Sets the system identifier."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-a              Makes the system URI absolute before resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-u uri          Sets the URI."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-d integer      Set the debug level."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "keyword         Identifies the type of resolution to perform:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                doctype, document, entity, notation, public, system,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                or uri."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
