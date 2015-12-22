.class Lcom/android/server/pm/SELinuxMMAC$Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Policy"
.end annotation


# instance fields
.field allowCategory:Ljava/lang/String;

.field bbcallowCategory:Ljava/lang/String;

.field bbccategory:I

.field category:I

.field isContainerApp:Z

.field private final pkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seinfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v2, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->bbccategory:I

    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->bbcallowCategory:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->isContainerApp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/SELinuxMMAC$Policy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method checkPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putPkg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putSeinfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    return-void
.end method
