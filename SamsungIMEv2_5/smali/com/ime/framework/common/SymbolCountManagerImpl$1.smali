.class Lcom/ime/framework/common/SymbolCountManagerImpl$1;
.super Ljava/lang/Object;
.source "SymbolCountManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/SymbolCountManagerImpl;->getSymbolCountList(I)Ljava/lang/String;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/SymbolCountManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/SymbolCountManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/SymbolCountManagerImpl$1;->this$0:Lcom/ime/framework/common/SymbolCountManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/common/SymbolCountManagerImpl$1;->this$0:Lcom/ime/framework/common/SymbolCountManagerImpl;

    iget-object v2, v2, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/common/SymbolCountManagerImpl$1;->this$0:Lcom/ime/framework/common/SymbolCountManagerImpl;

    iget-object v2, v2, Lcom/ime/framework/common/SymbolCountManagerImpl;->mSymbolCountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/common/SymbolCountManagerImpl$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
