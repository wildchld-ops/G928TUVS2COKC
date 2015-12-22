.class Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneInfo"
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mUri:Landroid/net/Uri;

    return-void
.end method
