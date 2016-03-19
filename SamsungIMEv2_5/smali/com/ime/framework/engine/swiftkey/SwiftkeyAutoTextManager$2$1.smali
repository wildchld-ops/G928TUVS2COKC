.class Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2$1;
.super Ljava/lang/Object;
.source "SwiftkeyAutoTextManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;->onListingComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;

.field final synthetic val$termsToAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2$1;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2;

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2$1;->val$termsToAdd:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager$2$1;->val$termsToAdd:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->mHashMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyAutoTextManager;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
