.class Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;
.super Ljava/lang/Object;
.source "SyncLMEngineSwiftKey.java"

# interfaces
.implements Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 0

    return-void
.end method

.method public onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 0

    return-void
.end method

.method public onListingComplete(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;)V"
        }
    .end annotation

    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MyWordListListener: onListingComplete. userWord.size()=:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "AddWordList_Default"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/com.sec.android.inputmethod/databases"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "AddWordList_Korean"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v10}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v11

    invoke-virtual {v11}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    invoke-virtual {v10}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v11

    invoke-virtual {v11}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    # getter for: Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;
    invoke-static {v11}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->access$000(Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;)Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v11

    invoke-virtual {v10}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v12

    invoke-virtual {v12}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v8, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->newLine()V

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v11, 0x1388

    if-le v1, v11, :cond_0

    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Too much words, so no more supported:count"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v11, "SamsungIME_SYNC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MyWordListListener getEngineName(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey$2;->this$0:Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;

    invoke-virtual {v13}, Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineSwiftKey;->getEngineName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Extrat Word="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_3
    :goto_1
    if-eqz v8, :cond_a

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v7, v8

    move-object v5, v6

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_5
    invoke-virtual {v10}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v11

    invoke-virtual {v11}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v7, v8

    move-object v5, v6

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_4
    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v11

    goto :goto_2

    :catch_2
    move-exception v11

    move-object v7, v8

    move-object v5, v6

    goto :goto_2

    :catch_3
    move-exception v9

    :goto_5
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_6
    if-eqz v7, :cond_4

    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    :catch_4
    move-exception v11

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v5, :cond_8

    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_8
    if-eqz v7, :cond_9

    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_9
    :goto_9
    throw v11

    :catch_5
    move-exception v11

    goto :goto_1

    :catch_6
    move-exception v11

    goto :goto_4

    :catch_7
    move-exception v11

    goto :goto_6

    :catch_8
    move-exception v12

    goto :goto_8

    :catch_9
    move-exception v12

    goto :goto_9

    :catchall_1
    move-exception v11

    move-object v5, v6

    goto :goto_7

    :catchall_2
    move-exception v11

    move-object v7, v8

    move-object v5, v6

    goto :goto_7

    :catch_a
    move-exception v9

    move-object v5, v6

    goto :goto_5

    :catch_b
    move-exception v9

    move-object v7, v8

    move-object v5, v6

    goto :goto_5

    :catch_c
    move-exception v2

    goto :goto_3

    :catch_d
    move-exception v2

    move-object v5, v6

    goto :goto_3

    :cond_a
    move-object v7, v8

    move-object v5, v6

    goto :goto_2
.end method

.method public onRemovingComplete(Z)V
    .locals 0

    return-void
.end method

.method public onResortingComplete()V
    .locals 0

    return-void
.end method
