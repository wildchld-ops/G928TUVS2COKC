.class final Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$1;
.super Ljava/lang/Object;
.source "XmlBackup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_HomeFolder(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;)I
    .locals 2

    iget v0, p1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->orderWeight:I

    iget v1, p2, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->orderWeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;

    check-cast p2, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$1;->compare(Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;)I

    move-result v0

    return v0
.end method
