require_relative '../include/AbstractSyntaxTree'
require_relative '../include/AbstractSyntaxTreeAdd'
require_relative '../include/AbstractSyntaxTreeConstant'
require_relative '../include/AbstractSyntaxTreeX'
require_relative '../include/AbstractSyntaxTreeMul'
require_relative '../include/AbstractSyntaxTreeSub'




def main()
        ast = AbstractSyntaxTree.new()

        # 1-(2-3)
        binary_tree = AbstractSyntaxTreeAdd.new(AbstractSyntaxTreeAdd.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeX.new()), AbstractSyntaxTreeAdd.new(AbstractSyntaxTreeConstant.new(1), AbstractSyntaxTreeConstant.new(2)))        
        puts ast.print_ast(binary_tree, 1)
end

main()