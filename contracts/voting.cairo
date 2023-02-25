#[contract] //Keyword to show that it's a Cairo contract
 
//mod - keyword defining a module
mod Voting {
    use starknet::get_caller_address;
    //use starknet::contract_address_const;
    use starknet::ContractAddress;

    struct Storage {
        name: felt,
        //Mapping between voters and proposals
        //vote: LegacyMap::<ContractAddress, u256>,
        proposalVotes: LegacyMap::<u256, felt>,
    }

    //Populate the proposals array with a few default proposals
    #[constructor]
    fn constructor(_name: felt, _counter: u256) {
        
        //Initialise the proposal with 0 votes
        proposalVotes::write(_counter, 0);
        name::write(_name);

    }

    #[external]
    fn addProposals(_counter: u256) {
        proposalVotes::write(_counter, 0);
    }

    #[external]
    fn voteOnProposal(prop_num: u256) {
        //let voter = get_caller_address();
        //vote::write(voter, prop_num);

        let mut votes = proposalVotes::read(prop_num);
        votes = votes + 1;

        proposalVotes::write(prop_num, votes);
    }

    #[view]
    fn getVotesForProposal(prop_num: u256) -> felt {
      proposalVotes::read(prop_num)
    }

    //TODO - get voted proposal for a particular voted

}
