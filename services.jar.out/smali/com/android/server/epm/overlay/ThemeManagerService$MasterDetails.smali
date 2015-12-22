.class Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MasterDetails"
.end annotation


# instance fields
.field mCategory:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mStatus:Z

.field mTitle:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mStatus:Z

    iput-object p5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    return-void
.end method
