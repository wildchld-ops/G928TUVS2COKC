.class Lcom/stericson/RootTools/InternalMethods;
.super Ljava/lang/Object;
.source "InternalMethods.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkUtil(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/stericson/RootTools/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_4

    invoke-virtual {v3}, Lcom/stericson/RootTools/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v6, "755"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "777"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "775"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/stericson/RootTools/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v5, "RW"

    invoke-static {p1, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v5, "cp"

    invoke-static {v5}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "cp command is available!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cp -fp "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const-string v5, "RO"

    invoke-static {p1, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return v4

    :cond_3
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cp -f "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v5, "busybox"

    invoke-static {v5}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "cp"

    const-string v6, "busybox"

    invoke-static {v5, v6}, Lcom/stericson/RootTools/InternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "busybox cp command is available!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "busybox cp -fp "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "busybox cp -f "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    goto/16 :goto_0

    :cond_6
    const-string v5, "cat"

    invoke-static {v5}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "cp is not available, use cat!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eqz p3, :cond_7

    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;

    move-result-object v3

    iget v2, v3, Lcom/stericson/RootTools/Permissions;->permissions:I

    :cond_7
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cat "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    if-eqz p3, :cond_1

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "chmod "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/stericson/RootTools/InternalMethods$1;

    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ls "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-direct {v0, v6, v7, v4}, Lcom/stericson/RootTools/InternalMethods$1;-><init>(I[Ljava/lang/String;Ljava/util/List;)V

    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/Shell;->isAnyShellOpen()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startShell()Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v7, 0x0

    :try_start_1
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->closeShell(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    move v5, v6

    :goto_2
    return v5

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/stericson/RootTools/Shell;->getOpenShell()Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move v5, v6

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :catch_1
    move-exception v1

    move v5, v6

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method static findBinary(Ljava/lang/String;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v2, 0x0

    sget-object v9, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Checking for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_3

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    const-string v9, "Trying second method"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Checking for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/16 v9, 0x8

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "/sbin/"

    aput-object v9, v6, v8

    const/4 v9, 0x1

    const-string v10, "/system/bin/"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "/system/xbin/"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "/data/local/xbin/"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "/data/local/bin/"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    const-string v10, "/system/sd/xbin/"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "/system/bin/failsafe/"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "/data/local/"

    aput-object v10, v6, v9

    array-length v9, v6

    :goto_2
    if-lt v8, v9, :cond_5

    :cond_1
    sget-boolean v8, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    sget-object v8, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return v2

    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " was found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " was NOT found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v9, "TimeoutException!!!"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    aget-object v7, v6, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " was found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " was NOT found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Paths: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    const-string v3, "/system"

    const-string v4, "rw"

    invoke-static {v3, v4}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " ln -s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /system/bin/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " chmod 0755 /system/bin/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    :cond_0
    const-string v3, "/system"

    const-string v4, "ro"

    invoke-static {v3, v4}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " rm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static fixUtils([Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    aget-object v0, p0, v2

    invoke-static {v0}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "busybox"

    invoke-static {v4}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "busybox"

    invoke-static {v0, v4}, Lcom/stericson/RootTools/InternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/stericson/RootTools/InternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "toolbox"

    invoke-static {v4}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "toolbox"

    invoke-static {v0, v4}, Lcom/stericson/RootTools/InternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/stericson/RootTools/InternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/stericson/RootTools/InternalMethods$2;

    sget v2, Lcom/stericson/RootTools/InternalVariables;->BBA:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "busybox --list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/stericson/RootTools/InternalMethods$2;-><init>(I[Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    return-object v1
.end method

.method static getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v2, "Getting BusyBox Version"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v2, ""

    sput-object v2, Lcom/stericson/RootTools/InternalVariables;->busyboxVersion:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/InternalMethods$3;

    sget v2, Lcom/stericson/RootTools/InternalVariables;->BBV:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "busybox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/stericson/RootTools/InternalMethods$3;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/stericson/RootTools/InternalVariables;->busyboxVersion:Ljava/lang/String;

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "BusyBox was not found, more information MAY be available with Debugging on."

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v2, ""

    goto :goto_0
.end method

.method static getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking permissions for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " was found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/InternalMethods$6;

    sget v3, Lcom/stericson/RootTools/InternalVariables;->FPS:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ls -l "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "busybox ls -l "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/system/bin/failsafe/toolbox ls -l "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "toolbox ls -l "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/stericson/RootTools/InternalMethods$6;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    sget-object v2, Lcom/stericson/RootTools/InternalVariables;->permissions:Lcom/stericson/RootTools/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/InternalMethods$4;

    sget v2, Lcom/stericson/RootTools/InternalVariables;->GI:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/local/ls -i "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/stericson/RootTools/InternalMethods$4;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    sget-object v2, Lcom/stericson/RootTools/InternalVariables;->inode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, ""

    goto :goto_0
.end method

.method static getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/Mount;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method

.method protected static getMounts()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sput-object v3, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    sget-object v4, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    return-object v4

    :cond_0
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/stericson/RootTools/Mount;

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v7, v0, v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
.end method

.method static getPath()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/stericson/RootTools/InternalMethods;

    invoke-direct {v0}, Lcom/stericson/RootTools/InternalMethods;-><init>()V

    invoke-virtual {v0}, Lcom/stericson/RootTools/InternalMethods;->returnPath()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method static getSpace(Ljava/lang/String;)J
    .locals 11

    const/4 v5, 0x0

    sput-object p0, Lcom/stericson/RootTools/InternalVariables;->getSpaceFor:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "Looking for Space"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/InternalMethods$7;

    sget v6, Lcom/stericson/RootTools/InternalVariables;->GS:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "df "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v0, v6, v7}, Lcom/stericson/RootTools/InternalMethods$7;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v6, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "First Method"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    sget-object v7, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x3

    const-string v6, "Second Method"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    sget-object v6, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    const/4 v4, 0x2

    :cond_0
    sget-object v6, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    array-length v7, v6

    :goto_2
    if-lt v5, v7, :cond_5

    :cond_1
    const-string v5, "Returning -1, space could not be determined."

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    :goto_3
    return-wide v5

    :cond_2
    aget-object v3, v7, v6

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    new-instance v5, Lcom/stericson/RootTools/InternalMethods;

    invoke-direct {v5}, Lcom/stericson/RootTools/InternalMethods;-><init>()V

    invoke-virtual {v5, v3}, Lcom/stericson/RootTools/InternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    :cond_3
    const-string v9, "used,"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    aget-object v3, v6, v5

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "Valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-ne v1, v4, :cond_6

    new-instance v5, Lcom/stericson/RootTools/InternalMethods;

    invoke-direct {v5}, Lcom/stericson/RootTools/InternalMethods;-><init>()V

    invoke-virtual {v5, v3}, Lcom/stericson/RootTools/InternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method static getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Looking for Symlink for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/stericson/RootTools/InternalMethods$8;

    sget v5, Lcom/stericson/RootTools/InternalVariables;->GSYM:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ls -l "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6, v3}, Lcom/stericson/RootTools/InternalMethods$8;-><init>(I[Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v4, v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Symlink found."

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v2, ""

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/stericson/RootTools/InternalMethods;->findBinary(Ljava/lang/String;)Z

    sget-object v5, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v4, v5

    goto :goto_0

    :cond_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string v5, "Symlink not found"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v2, ""

    goto :goto_0
.end method

.method static getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v1, "find"

    invoke-static {v1}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -type l -exec ls -l {} \\; > /data/local/symlinks.txt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v4, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/CommandCapture;->waitForFinish()V

    new-instance v1, Lcom/stericson/RootTools/InternalMethods;

    invoke-direct {v1}, Lcom/stericson/RootTools/InternalMethods;-><init>()V

    invoke-virtual {v1}, Lcom/stericson/RootTools/InternalMethods;->getSymLinks()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/stericson/RootTools/InternalVariables;->symlinks:Ljava/util/ArrayList;

    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->symlinks:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->symlinks:Ljava/util/ArrayList;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method

.method static getWorkingToolbox()Ljava/lang/String;
    .locals 1

    const-string v0, "busybox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "busybox"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "toolbox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "toolbox"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 10

    const/4 v7, 0x0

    const-string v8, "Checking SDcard size and that it is mounted as RW"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    mul-long v8, v0, v2

    cmp-long v8, p0, v8

    if-gez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->found:Z

    const-string v4, "toolbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "busybox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/InternalMethods$9;

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v4, "toolbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v6, v7

    invoke-direct {v0, v5, v6, p1, p0}, Lcom/stericson/RootTools/InternalMethods$9;-><init>(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v4

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Lcom/stericson/RootTools/Command;->waitForFinish(I)V

    sget-boolean v4, Lcom/stericson/RootTools/InternalVariables;->found:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Box contains "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " util!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " --list"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Box does not contain "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " util!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/Installer;

    invoke-direct {v1, p0}, Lcom/stericson/RootTools/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/stericson/RootTools/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isAccessGiven()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Checking for Root access"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    new-instance v0, Lcom/stericson/RootTools/InternalMethods$5;

    sget v4, Lcom/stericson/RootTools/InternalVariables;->IAG:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "id"

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/stericson/RootTools/InternalMethods$5;-><init>(I[Ljava/lang/String;)V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    sget-boolean v4, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    :goto_0
    return v2

    :cond_0
    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    throw v2
.end method

.method public static isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/stericson/RootTools/InternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "Preparing Native Tools"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->nativeToolsReady:Z

    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/Installer;

    invoke-direct {v1, p1}, Lcom/stericson/RootTools/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "nativetools"

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->nativeToolsReady:Z

    :goto_0
    sget-boolean v2, Lcom/stericson/RootTools/InternalVariables;->nativeToolsReady:Z

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v2, "nativetools"

    const-string v3, "700"

    invoke-virtual {v1, p0, v2, v3}, Lcom/stericson/RootTools/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->nativeToolsReady:Z

    goto :goto_0
.end method

.method static isProcessRunning(Ljava/lang/String;)Z
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checks if process is running: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/stericson/RootTools/InternalMethods$10;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/InternalMethods$10;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ps"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v3, v4, v2, v5}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    invoke-virtual {v2}, Lcom/stericson/RootTools/RootTools$Result;->getError()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/stericson/RootTools/RootTools$Result;->getData()Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static killProcess(Ljava/lang/String;)Z
    .locals 8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Killing process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/stericson/RootTools/InternalMethods$11;

    invoke-direct {v3, p0}, Lcom/stericson/RootTools/InternalMethods$11;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ps"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v4, v5, v3, v6}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    invoke-virtual {v3}, Lcom/stericson/RootTools/RootTools$Result;->getError()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/stericson/RootTools/RootTools$Result;->getData()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "kill -9 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3

    const-string v1, "Launching Market for BusyBox"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v0
.end method

.method static offerBusyBox(Landroid/app/Activity;)V
    .locals 3

    const-string v1, "Launching Market for BusyBox"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3

    const-string v1, "Launching Market for SuperUser"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.noshufou.android.su"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v0
.end method

.method static offerSuperUser(Landroid/app/Activity;)V
    .locals 3

    const-string v1, "Launching Market for SuperUser"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.noshufou.android.su"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getConvertedSpace(Ljava/lang/String;)J
    .locals 8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    :goto_2
    return-wide v6

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_5

    const/16 v6, 0x6d

    if-eq v0, v6, :cond_2

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_3

    :cond_2
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    goto :goto_1

    :cond_3
    const/16 v6, 0x67

    if-eq v0, v6, :cond_4

    const/16 v6, 0x47

    if-ne v0, v6, :cond_0

    :cond_4
    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-wide/16 v6, -0x1

    goto :goto_2
.end method

.method protected getPermissions(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x2d

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_3

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x77

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v2, Lcom/stericson/RootTools/Permissions;

    invoke-direct {v2}, Lcom/stericson/RootTools/Permissions;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/Permissions;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/Permissions;->setUserPermissions(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/Permissions;->setGroupPermissions(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x7

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/Permissions;->setOtherPermissions(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/stericson/RootTools/InternalMethods;->parseSpecialPermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/InternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/InternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/stericson/RootTools/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/InternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/Permissions;->setPermissions(I)V

    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getSymLinks()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/local/symlinks.txt"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/stericson/RootTools/Symlink;

    new-instance v5, Ljava/io/File;

    array-length v6, v0

    add-int/lit8 v6, v6, -0x3

    aget-object v6, v0, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/stericson/RootTools/Symlink;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected parsePermissions(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    const/4 v0, 0x4

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x0

    goto :goto_2
.end method

.method protected parseSpecialPermissions(Ljava/lang/String;)I
    .locals 3

    const/16 v2, 0x73

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "special permissions "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    return v0
.end method

.method protected returnPath()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v9, "/data/local/tmp"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "mkdir /data/local/tmp"

    aput-object v12, v10, v11

    invoke-direct {v1, v9, v10}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    :goto_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    const/4 v4, 0x0

    const-string v9, "/"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "/"

    const-string v10, "rw"

    invoke-static {v9, v10}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "chmod 0777 /init.rc"

    aput-object v12, v10, v11

    invoke-direct {v0, v9, v10}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "dd if=/init.rc of=/data/local/tmp/init.rc"

    aput-object v12, v10, v11

    invoke-direct {v1, v9, v10}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "chmod 0777 /data/local/tmp/init.rc"

    aput-object v12, v10, v11

    invoke-direct {v0, v9, v10}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    const-string v9, "/"

    invoke-static {v9, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/local/tmp/init.rc"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v7, v8

    :goto_1
    return v7

    :cond_1
    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v9, "export PATH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v9, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_2
    sget-boolean v7, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Error: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v7, v8

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method
