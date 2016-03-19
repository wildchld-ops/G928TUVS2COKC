.class Lcom/stericson/RootTools/InternalMethods$7;
.super Lcom/stericson/RootTools/Command;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->getSpace(Ljava/lang/String;)J
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
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/stericson/RootTools/InternalVariables;->GS:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$7;->command:[Ljava/lang/String;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/stericson/RootTools/InternalMethods$7;->command:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    :cond_0
    return-void
.end method
