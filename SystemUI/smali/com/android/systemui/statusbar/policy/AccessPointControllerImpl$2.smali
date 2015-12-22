.class Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private score(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)I
    .locals 3

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->level:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    :goto_0
    add-int/2addr v0, v2

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConfigured:Z

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;->score(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;->score(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    check-cast p2, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;->compare(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)I

    move-result v0

    return v0
.end method
