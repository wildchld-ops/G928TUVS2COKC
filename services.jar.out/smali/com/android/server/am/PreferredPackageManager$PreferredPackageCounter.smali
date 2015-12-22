.class Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferredPackageCounter"
.end annotation


# instance fields
.field hitCount:I

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;->hitCount:I

    return-void
.end method
