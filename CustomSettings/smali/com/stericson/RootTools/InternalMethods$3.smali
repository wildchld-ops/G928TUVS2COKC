.class Lcom/stericson/RootTools/InternalMethods$3;
.super Lcom/stericson/RootTools/Command;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 2

    sget v1, Lcom/stericson/RootTools/InternalVariables;->BBV:I

    if-ne p1, v1, :cond_0

    const-string v1, "BusyBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/stericson/RootTools/InternalVariables;->busyboxVersion:Ljava/lang/String;

    :cond_0
    return-void
.end method
