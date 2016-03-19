.class Lcom/stericson/RootTools/InternalMethods$1;
.super Lcom/stericson/RootTools/Command;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method varargs constructor <init>(I[Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p3, p0, Lcom/stericson/RootTools/InternalMethods$1;->val$result:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$1;->val$result:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
