.class Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MasterDetails"
.end annotation


# instance fields
.field mCategory:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mStatus:Z

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    return-void
.end method
