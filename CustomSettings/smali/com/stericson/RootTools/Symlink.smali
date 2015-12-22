.class public Lcom/stericson/RootTools/Symlink;
.super Ljava/lang/Object;
.source "Symlink.java"


# instance fields
.field protected final file:Ljava/io/File;

.field protected final symlinkPath:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stericson/RootTools/Symlink;->file:Ljava/io/File;

    iput-object p2, p0, Lcom/stericson/RootTools/Symlink;->symlinkPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/Symlink;->file:Ljava/io/File;

    return-object v0
.end method

.method public getSymlinkPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/Symlink;->symlinkPath:Ljava/io/File;

    return-object v0
.end method
